-- monster_tier_scaling.lua
-- Scales max HP of tiered monsters proportionally to reference level growth over time.
--
-- Design:
--   On first install, the current reference level is stored as the BASELINE.
--   As the reference grows, monster HP scales proportionally at a 75% exponent rate
--   (so if the reference doubles, HP increases by ~1.68× not 2× — gives players headroom).
--   Only mid/high/top-tier monsters are scaled (expTier >= 0.10).
--   Beginner zones (expTier < 0.10) are never scaled — new players can always survive them.
--   Non-tiered monsters are completely unaffected.
--
-- HP scaling formula:
--   growthRatio  = currentReference / baselineReference
--   hpMultiplier = growthRatio ^ SCALE_EXPONENT  (0.75 = softer than linear)
--
-- Applied to: mtype:maxHealth() and mtype:health()
--   maxHealth = max HP for new spawns
--   health    = starting HP for new spawns (set equal to new max so they spawn full)
--
-- Note: already-spawned monsters keep their current HP until they die and respawn.
-- Each respawn picks up the new mtype values automatically.

---------------------------------------------------------------------------
-- Config
---------------------------------------------------------------------------
local SCALE_EXPONENT     = 0.75  -- HP grows at 75% the speed of reference growth
                                  -- ref ×2 → HP ×1.68 | ref ×5 → HP ×3.34 | ref ×10 → HP ×5.62
local MIN_TIER_FOR_SCALE = 0.10  -- monsters below this tier are never difficulty-scaled

local KV_BASELINE = "baseline_reference"

---------------------------------------------------------------------------
-- In-memory original HP store
-- Captured once on startup BEFORE any scaling is applied.
-- This ensures re-scaling always uses the true definition value, never a scaled value.
---------------------------------------------------------------------------
local originalMaxHp = {}  -- [lowercase_monster_name] = base max HP from definition

local function captureOriginalHp()
	local registry = MonsterTiers.getRegistry()
	for name, tier in pairs(registry) do
		if tier >= MIN_TIER_FOR_SCALE and not originalMaxHp[name] then
			local mtype = MonsterType(name)
			if mtype then
				originalMaxHp[name] = mtype:maxHealth()
			end
		end
	end
end

---------------------------------------------------------------------------
-- Core scaling logic
---------------------------------------------------------------------------
local function applyScaling()
	local serverKV    = kv.scoped("server")
	local currentRef  = serverKV:get("reference_level") or 1
	local baselineRef = serverKV:get(KV_BASELINE)

	if not baselineRef then
		-- First install: freeze the current reference as the scaling baseline.
		-- Scaling multiplier starts at 1.0× — no immediate HP change.
		serverKV:set(KV_BASELINE, currentRef)
		baselineRef = currentRef
		logger.info("[MonsterTierScaling] Baseline reference level set to {}.", baselineRef)
	end

	-- Nothing to scale if reference hasn't grown past baseline yet
	if baselineRef <= 0 or currentRef <= baselineRef then
		return
	end

	local growthRatio  = currentRef / baselineRef
	local hpMultiplier = math.pow(growthRatio, SCALE_EXPONENT)

	local scaled, missing = 0, 0
	local registry = MonsterTiers.getRegistry()

	for name, tier in pairs(registry) do
		if tier >= MIN_TIER_FOR_SCALE then
			local baseHp = originalMaxHp[name]
			if baseHp and baseHp > 0 then
				local mtype = MonsterType(name)
				if mtype then
					local newMaxHp = math.max(1, math.floor(baseHp * hpMultiplier))
					mtype:maxHealth(newMaxHp)
					mtype:health(newMaxHp)  -- new spawns start at full HP
					scaled = scaled + 1
				else
					missing = missing + 1
				end
			end
		end
	end

	logger.info(
		"[MonsterTierScaling] Applied {}x HP to {} monsters (ref growth {}x, {} missing).",
		string.format("%.2f", hpMultiplier), scaled, string.format("%.2f", growthRatio), missing
	)
end

---------------------------------------------------------------------------
-- Startup: capture originals first, then apply initial scaling
---------------------------------------------------------------------------
local tierScalingStartup = GlobalEvent("MonsterTierScalingStartup")

function tierScalingStartup.onStartup()
	-- captureOriginalHp must run before applyScaling — it reads the true definition values
	captureOriginalHp()
	applyScaling()
end

tierScalingStartup:register()

---------------------------------------------------------------------------
-- Periodic: every 30 minutes (aligned with server_reference_level.lua interval)
---------------------------------------------------------------------------
local tierScalingInterval = GlobalEvent("MonsterTierScalingInterval")

function tierScalingInterval.onThink(interval)
	applyScaling()
	return true
end

tierScalingInterval:interval(30 * 60 * 1000)
tierScalingInterval:register()
