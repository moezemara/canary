-- exp_bonus.lua
-- Unified experience bonus framework.
-- Provides ExpBonus (breakdown/display + hot-path sum) and CatchUp (new-player multiplier).
-- All variable bonuses are stored in player KV under the "exp-bonus" scope so they remain
-- persistent and can be surfaced together by the !exprate command.

---------------------------------------------------------------------------
-- Config
---------------------------------------------------------------------------
-- Power curve exponent. Controls how steep the bonus is for players far below reference.
-- 1.0 = linear: 20x behind ref → 20x monster exp (intuitively cancels the level gap).
-- Applied once, additively (no longer squared — the old multiplicative bug is fixed).
local CATCH_UP_EXP       = 1.0
-- Fraction of the reference level at which the catch-up bonus reaches exactly 0.
-- e.g. 0.85 means: once you are 85% of the top players' level, catch-up ends.
-- A smooth fade is applied so there is no hard cliff at this point.
local CATCH_UP_THRESHOLD = 0.85

---------------------------------------------------------------------------
-- ExpBonus
---------------------------------------------------------------------------
ExpBonus = {}

--- Returns a list of bonus entries and the effective total multiplier.
-- Each entry: { name, value, type ("multiplier"|"additive"), desc }
-- @param player  Player object
-- @return bonuses table, effectiveTotal number
function ExpBonus.getBreakdown(player)
	local staminaBonusXp = player:getFinalBonusStamina()
	local baseRateExp    = player:getFinalBaseRateExperience()
	local staminaMins    = player:getStamina()

	local staminaLabel
	if staminaMins > 2340 and player:isPremium() then
		staminaLabel = string.format("green/premium, %dh%dm left", math.floor(staminaMins / 60), staminaMins % 60)
	elseif staminaMins <= 840 then
		staminaLabel = string.format("orange/low, %dh%dm left", math.floor(staminaMins / 60), staminaMins % 60)
	else
		staminaLabel = string.format("normal, %dh%dm left", math.floor(staminaMins / 60), staminaMins % 60)
	end

	local bonuses = {
		{ name = "Base Rate", value = baseRateExp,    type = "multiplier", desc = string.format("%.0fx", baseRateExp) },
		{ name = "Stamina",   value = staminaBonusXp, type = "multiplier", desc = string.format("%.1fx (%s)", staminaBonusXp, staminaLabel) },
	}

	-- KV-backed bonuses
	local kvScope = player:kv():scoped("exp-bonus")

	-- Guild rank: additive bonus
	local guild = kvScope:get("guild") or 0
	if guild > 0 then
		bonuses[#bonuses + 1] = {
			name  = "Guild Rank Bonus",
			value = guild,
			type  = "additive",
			desc  = string.format("+%.1f%%", guild * 100),
		}
	end

	-- Catch-up: shown as a rate multiplier (KV stores the additive portion = mult - 1)
	local catchupAdditive = kvScope:get("catchup") or 0
	local catchupMult     = 1.0 + catchupAdditive
	if catchupMult > 1.0 then
		bonuses[#bonuses + 1] = {
			name  = "Catch-Up Rate",
			value = catchupMult,
			type  = "multiplier",
			desc  = string.format("%.2fx", catchupMult),
		}
	end

	-- Store / Daily XP Boost (read live)
	local xpBoostPct  = player:getXpBoostPercent() or 0
	local xpBoostTime = player:getXpBoostTime()    or 0
	if xpBoostTime > 0 and xpBoostPct > 0 then
		bonuses[#bonuses + 1] = {
			name  = "XP Boost",
			value = xpBoostPct / 100,
			type  = "additive",
			desc  = string.format("+%d%% (%dm remaining)", xpBoostPct, math.floor(xpBoostTime / 60)),
		}
	end

	-- Compute effective total: baseRate * stamina * (1 + additive bonuses) * catchupMult
	local additiveSum = 0
	for _, b in ipairs(bonuses) do
		if b.type == "additive" then
			additiveSum = additiveSum + b.value
		end
	end
	local effectiveTotal = baseRateExp * staminaBonusXp * (1 + additiveSum) * catchupMult

	return bonuses, effectiveTotal
end

--- Returns the additive bonus sum only (fast hot-path for onGainExperience).
-- Reads guild and catchup from KV; reads XP boost live.
-- @param player  Player object
-- @return number  additive sum (0.0 = no bonus)
function ExpBonus.getAdditiveSum(player)
	local sum     = 0
	local kvScope = player:kv():scoped("exp-bonus")

	for _, key in ipairs({ "guild", "catchup" }) do
		sum = sum + (kvScope:get(key) or 0)
	end

	local xpBoostPct  = player:getXpBoostPercent() or 0
	local xpBoostTime = player:getXpBoostTime()    or 0
	if xpBoostTime > 0 and xpBoostPct > 0 then
		sum = sum + (xpBoostPct / 100)
	end

	return sum
end

--- Returns the unified effective exp rate for a player.
-- Includes stamina, server base rate, guild rank bonus, and XP boost.
-- Catch-up is intentionally excluded — it is a monster-only mechanic;
-- PvP already handles low-level catch-up through the gap pool formula.
-- Calibrated so that full green stamina (1.5×) is the baseline: the PvP
-- pool constants are tuned for getEffectiveRate() = 1.5 producing the
-- reference table values.
-- @param player  Player object
-- @return number  combined multiplier (>= 0)
function ExpBonus.getEffectiveRate(player)
	local kvScope    = player:kv():scoped("exp-bonus")
	local guild      = kvScope:get("guild") or 0
	local xpBoost    = 0
	local xpBoostTime = player:getXpBoostTime() or 0
	if xpBoostTime > 0 then
		xpBoost = (player:getXpBoostPercent() or 0) / 100
	end
	return player:getFinalBonusStamina()
	     * player:getFinalBaseRateExperience()
	     * (1 + guild + xpBoost)
end

---------------------------------------------------------------------------
-- CatchUp
---------------------------------------------------------------------------
CatchUp = {}

--- Returns the catch-up multiplier for a player and updates their KV bonus for display.
--
-- Formula:
--   rawMult = (referenceLevel / playerLevel) ^ CATCH_UP_EXP
--             — naturally scales with the gap: a level-8 vs a 3M server gets a massive boost.
--
--   progress = playerLevel / (referenceLevel * CATCH_UP_THRESHOLD)   [0..1]
--   mult     = 1 + (rawMult - 1) * (1 - progress)
--             — smoothly fades the bonus to exactly 0 when progress = 1 (no cliff).
--
-- Players at or above THRESHOLD × referenceLevel get mult = 1.0 (no bonus, no penalty).
-- @param player  Player object
-- @return number  multiplier (>= 1.0)
function CatchUp.getMultiplier(player)
	local referenceLevel = kv.scoped("server"):get("reference_level") or 1
	local playerLevel    = player:getLevel()
	local cutoff         = referenceLevel * CATCH_UP_THRESHOLD

	if playerLevel >= cutoff then
		player:kv():scoped("exp-bonus"):set("catchup", 0)
		return 1.0
	end

	-- Raw power-curve bonus (unbounded — scales naturally with level gap)
	local rawMult = math.pow(referenceLevel / playerLevel, CATCH_UP_EXP)

	-- Smooth fade: full bonus far below, reaches 0 exactly at the threshold
	local progress = playerLevel / cutoff           -- 0 (very low) → 1 (at threshold)
	local mult     = 1.0 + (rawMult - 1.0) * (1.0 - progress)

	-- Store additive portion (mult - 1) for the !exprate breakdown display
	player:kv():scoped("exp-bonus"):set("catchup", mult - 1.0)

	return mult
end
