-- hunting_stamina.lua
-- A second stamina bar that governs monster exp efficiency.
-- Drains with each tiered monster kill (scaled by player/reference ratio).
-- Restored by PvP kills (proportional to kill difficulty ratio).
-- Recovers slowly while idle (logged in but not actively killing tiered monsters).
--
-- Calibrated for ~10,000 kills/hour (fast/bot-heavy server):
--   Full bar (10,000 pts) lasts ~10 hours of grinding at top reference level.
--   One PvP kill with ratio=5 restores ~500 pts (30 min of full-rate hunting).
--   Idling from 5,000 → 10,000 takes ~50 hours ≈ 2 days.
--
-- Low-level players (far below reference) have near-zero drain — they can grind freely
-- and are not punished for being unable to PvP.

---------------------------------------------------------------------------
-- Constants
---------------------------------------------------------------------------
local MAX_POINTS     = 10000   -- Full bar capacity
local IDLE_RATE      = 100     -- Points recovered per hour while idle (not actively killing)
                               -- 5,000 → 10,000 in 50 hours ≈ 2 days
local DRAIN_BASE     = 0.1     -- Drain per kill at 100% reference ratio (playerLevel = refLevel)
                               -- 10k kills/hr × 0.1 = 1,000 pts/hr → pool lasts 10 hours
local PVP_GRANT_BASE = 100     -- Hunt stamina per unit of PvP ratio on a kill
                               -- ratio=1 → +100 pts, ratio=5 → +500 pts
local MAX_PVP_GRANT  = 1000    -- Cap per single PvP kill (prevents one kill refilling the bar)

local KV_SCOPE      = "hunt-stamina"
local KV_POINTS     = "points"
local KV_LAST_TICK  = "last_idle_tick"

---------------------------------------------------------------------------
-- Efficiency thresholds
---------------------------------------------------------------------------
-- Points         → huntStaminaRate (multiplier applied to monster exp formula)
-- 5,000 – 10,000 → 1.00  (full rewards)
-- 2,000 – 5,000  → 0.75
--   500 – 2,000  → 0.50
--     0 –   500  → 0.25  (floor — hunting still works, just slower)
local EFFICIENCY_TIERS = {
	{ threshold = 5000, rate = 1.00 },
	{ threshold = 2000, rate = 0.75 },
	{ threshold = 500,  rate = 0.50 },
	{ threshold = 0,    rate = 0.25 },
}

---------------------------------------------------------------------------
-- HuntStamina API
---------------------------------------------------------------------------
HuntStamina = {}

--- Returns the player's current hunt stamina, applying idle recovery since last read.
-- Initializes to MAX_POINTS on first access.
-- @param player  Player object
-- @return number  current points (0 – MAX_POINTS)
function HuntStamina.get(player)
	local kv = player:kv():scoped(KV_SCOPE)
	local points = kv:get(KV_POINTS)

	if points == nil then
		-- First access: initialize to full bar
		kv:set(KV_POINTS, MAX_POINTS)
		kv:set(KV_LAST_TICK, os.time())
		return MAX_POINTS
	end

	-- Lazy idle recovery: add points proportional to elapsed time
	local lastTick = kv:get(KV_LAST_TICK) or os.time()
	local elapsed  = os.time() - lastTick          -- seconds since last check
	local recovery = elapsed * (IDLE_RATE / 3600)  -- convert hourly rate to per-second

	if recovery >= 0.01 then
		points = math.min(MAX_POINTS, points + recovery)
		kv:set(KV_POINTS, points)
		kv:set(KV_LAST_TICK, os.time())
	end

	return points
end

--- Returns the hunt stamina efficiency multiplier (0.25 – 1.00).
-- Applied as a final multiplier on tiered monster exp.
-- @param player  Player object
-- @return number  efficiency (0.25 = depleted, 1.00 = full)
function HuntStamina.getEfficiency(player)
	local points = HuntStamina.get(player)

	for _, tier in ipairs(EFFICIENCY_TIERS) do
		if points >= tier.threshold then
			return tier.rate
		end
	end

	return 0.25  -- fallback floor
end

--- Drains hunt stamina after killing a tiered monster.
-- Drain is scaled by (playerLevel / referenceLevel) so low-level players are not punished.
-- @param player         Player object
-- @param referenceLevel integer  current server reference level
function HuntStamina.onMonsterKill(player, referenceLevel)
	local kv    = player:kv():scoped(KV_SCOPE)
	local ratio = player:getLevel() / math.max(1, referenceLevel)
	ratio = math.min(1.0, ratio)  -- cap at 1.0 (at or above reference = maximum drain rate)

	local drain  = math.max(0.0001, DRAIN_BASE * ratio)
	local points = HuntStamina.get(player)  -- also applies idle recovery
	points = math.max(0, points - drain)
	kv:set(KV_POINTS, points)
end

--- Restores hunt stamina after a PvP kill.
-- Grant is proportional to the kill's difficulty ratio (same ratio used in PvP exp formula).
-- @param attacker  Player object
-- @param ratio     victimLevel / attackerLevel
function HuntStamina.onPvPKill(attacker, ratio)
	local kv     = attacker:kv():scoped(KV_SCOPE)
	local grant  = math.min(MAX_PVP_GRANT, ratio * PVP_GRANT_BASE)
	local points = HuntStamina.get(attacker)
	points = math.min(MAX_POINTS, points + grant)
	kv:set(KV_POINTS, points)
end

--- Returns display information for the !exprate command.
-- @param player  Player object
-- @return table  { points, max, efficiency, hoursToFull }
function HuntStamina.getDisplayInfo(player)
	local points     = HuntStamina.get(player)
	local efficiency = HuntStamina.getEfficiency(player)
	local remaining  = MAX_POINTS - points
	local hoursToFull = remaining / math.max(1, IDLE_RATE)

	return {
		points      = points,
		max         = MAX_POINTS,
		efficiency  = efficiency,
		hoursToFull = hoursToFull,
	}
end
