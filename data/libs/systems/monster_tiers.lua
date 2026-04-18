-- monster_tiers.lua
-- Tier-based monster EXP system.
--
-- Each tiered monster has an expTier fraction (0.0–1.0).
-- Effective level = expTier × referenceLevel (updates automatically as server grows).
--
-- Formula:
--   tierLevel    = expTier × referenceLevel
--   ratio        = tierLevel / playerLevel   (catch-up: large when player is far below tier)
--   levelsGained = ratio × BASE_LEVELS        (linear — no power curve needed, kills are stateless)
--   finalExp     = levelsGained × COST_FACTOR × playerLevel × effectiveRate × huntStaminaRate
--
-- Non-tiered monsters (expTier = nil): completely untouched.

---------------------------------------------------------------------------
-- Config
---------------------------------------------------------------------------
local CONFIG = {
	BASE_LEVELS  = 10,    -- Top player killing top-tier monster = 10 levels/kill at rate 1.0
	COST_FACTOR  = 200/3, -- Linear cost approximation (cost ∝ L) — same as PvP formula
	MIN_DMG_PCT  = 0.10,  -- Player must deal >= 10% of monster max HP to qualify for exp
}

---------------------------------------------------------------------------
-- Tier Registry
-- Maps lowercase monster name → expTier fraction (0.0–1.0)
-- expTier × referenceLevel = monster effective level
--
-- 18 tiers, evenly spaced 0.01 → 1.00 (step ≈ 0.058)
-- At reference = 20M:
--   Tier 1  (0.01) → 200,000    Tier 10 (0.54) → 10,800,000
--   Tier 5  (0.25) → 5,000,000  Tier 18 (1.00) → 20,000,000
--
-- Spawns with multiple monster types share the same tier value.
-- Difficulty scaling (Phase 2) applies only to tiers >= 0.10.
---------------------------------------------------------------------------
local registry = {
	-- Tier 1 — Cyclops (0.01 → 200k eff. level)
	["cyclops"]               = 0.01,

	-- Tier 2 — Dragon (0.07 → 1.4M)
	["dragon"]                = 0.07,

	-- Tier 3 — Hydra (0.13 → 2.6M)
	["hydra"]                 = 0.13,

	-- Tier 4 — War Golem (0.20 → 4M)
	["war golem"]             = 0.20,

	-- Tier 5 — Mutated Gang Member (0.26 → 5.2M)
	["mutated gang member"]   = 0.26,

	-- Tier 6 — Mutated Rat (0.32 → 6.4M)
	["mutated rat"]           = 0.32,

	-- Tier 7 — Golem Boss (0.38 → 7.6M)
	["golem boss"]            = 0.38,

	-- Tier 8 — Skeleton Knight (0.44 → 8.8M)
	["skeleton knight"]       = 0.44,

	-- Tier 9 — Hercules (0.50 → 10M)
	["hercules"]              = 0.50,

	-- Tier 10 — Dragonel (0.56 → 11.2M)
	["dragonel"]              = 0.56,

	-- Tier 11 — Angry Dragonel (0.62 → 12.4M)
	["angry dragonel"]        = 0.62,

	-- Tier 12 — Frost Dragonel (0.68 → 13.6M)
	["frost dragonel"]        = 0.68,

	-- Tier 13 — Barbarian Rouge (0.74 → 14.8M)
	["barbarian rouge"]       = 0.74,

	-- Tier 14 — Undead Snaketamer (0.80 → 16M)
	["undead snaketamer"]     = 0.80,

	-- Tier 15 — Pirazo / Ron The Raper / Piratel (0.85 → 17M)
	["pirazo"]                = 0.85,
	["ron the raper"]         = 0.85,
	["piratel"]               = 0.85,

	-- Tier 16 — Blue Djenius / Green Djenius (0.91 → 18.2M)
	["blue djenius"]          = 0.91,
	["green djenius"]         = 0.91,

	-- Tier 17 — Wizardino / Sorcerino (0.97 → 19.4M)
	["wizardino"]             = 0.97,
	["sorcerino"]             = 0.97,

	-- Tier 18 — Xynex / Undead Skeleton (1.00 → 20M top content)
	["xynex"]                 = 1.00,
	["undead skeleton"]       = 1.00,
}

---------------------------------------------------------------------------
-- Original base exp (captured at startup before sentinel override)
-- Used as the floor in the formula: max(baseExp, formulaExp)
---------------------------------------------------------------------------
local baseExp = {}  -- [lowercase_monster_name] = original exp from definition

---------------------------------------------------------------------------
-- MonsterTiers API
---------------------------------------------------------------------------
MonsterTiers = {}

--- Returns true if this monster has a tier assignment.
function MonsterTiers.isTiered(monsterName)
	return registry[monsterName:lower()] ~= nil
end

--- Returns the expTier fraction for a monster, or nil if not tiered.
function MonsterTiers.getTier(monsterName)
	return registry[monsterName:lower()]
end

--- Compute levels gained for killing a tiered monster.
-- Does NOT apply effectiveRate or huntStaminaRate — caller handles those.
-- @return number  levels gained (float; < 1 if player is far above the tier)
function MonsterTiers.getLevelsGained(monsterName, playerLevel, referenceLevel)
	local tier = registry[monsterName:lower()]
	if not tier or tier <= 0 then return 0 end

	local tierLevel = tier * referenceLevel
	local ratio     = tierLevel / math.max(1, playerLevel)

	return ratio * CONFIG.BASE_LEVELS
end

--- Returns true if the player dealt >= MIN_DMG_PCT of the monster's max HP.
-- Prevents leeching (AFK tagging, party carries).
function MonsterTiers.hasMinContribution(monster, player)
	local maxHp = monster:getMaxHealth()
	if not maxHp or maxHp <= 0 then return true end  -- safe fallback

	local minRequired = maxHp * CONFIG.MIN_DMG_PCT

	local damageMap = monster:getDamageMap()
	if not damageMap then return true end  -- safe fallback

	local playerDmg = 0
	for creatureId, dmgData in pairs(damageMap) do
		if creatureId == player:getId() then
			playerDmg = dmgData.total or 0
			break
		end
	end

	return playerDmg >= minRequired
end

--- Returns the internal config table (for display/debug tools).
function MonsterTiers.getConfig()
	return CONFIG
end

--- Returns the full registry table (for iteration by external systems, e.g. difficulty scaling).
function MonsterTiers.getRegistry()
	return registry
end

--- Returns the original XML base exp for a tiered monster (before sentinel override).
-- Used as the exp floor: finalExp = max(getBaseExp(name), formulaExp)
-- Returns 0 if not captured (e.g. monster not found at startup).
function MonsterTiers.getBaseExp(monsterName)
	return baseExp[monsterName:lower()] or 0
end

---------------------------------------------------------------------------
-- Startup: set sentinel experience = 1 for all tiered monsters.
-- Sentinel is required because if experience = 0 the engine skips
-- onGainExperience entirely. The formula fully replaces the value of 1.
---------------------------------------------------------------------------
local startupEvent = GlobalEvent("MonsterTiersSentinelExp")

function startupEvent.onStartup()
	local set, skipped = 0, 0
	for name, _ in pairs(registry) do
		local mtype = MonsterType(name)
		if mtype then
			-- Capture original exp as floor before applying sentinel
			baseExp[name] = mtype:experience()
			-- Sentinel: engine skips onGainExperience if exp == 0
			if mtype:experience() == 0 then
				mtype:experience(1)
			end
			set = set + 1
		else
			skipped = skipped + 1
			logger.warn("[MonsterTiers] Monster type not found: '{}'", name)
		end
	end
	logger.info("[MonsterTiers] Base exp captured and sentinel applied to {} monsters ({} not found).", set, skipped)
end

startupEvent:register()
