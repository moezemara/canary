-- pvp_experience.lua
-- Awards experience to player attackers when a player is killed in PvP.
-- Registered on each player via login.lua as "PvPExperience" (CREATURE_EVENT_DEATH).
--
-- Formula (two additive pools):
--
--   1. Gap pool  — closes the absolute level gap between attacker and victim.
--        levelsGained_gap ≈ gap × GAP_FRACTION × ratio^RATIO_POWER
--      The ratio power makes kills harder to achieve reward proportionally more:
--        ratio 2x  → ×2^0.7 ≈ ×1.6   (similar level, easy kill)
--        ratio 5x  → ×5^0.7 ≈ ×3.1   (medium difficulty)
--        ratio 10x → ×10^0.7 ≈ ×5.0  (hard kill)
--        ratio 20x → ×20^0.7 ≈ ×8.1  (very hard kill)
--      Uses linear cost approx (cost ∝ L) so the cost cancels in the gap term.
--
--   2. Base pool — minimum reward for same-level kills (prevents 0 reward at equal level).
--        levelsGained_base ≈ (victimLevel / attackerLevel) × (BASE_POOL_PER_LEVEL × 3/200)
--
--   Combined: levelsGained ≈ gap × GAP_FRACTION × ratio^RATIO_POWER + ratio × 240
--
--   Stamina: normalized to full premium stamina (1.5x = 1.0 factor). Lower stamina = penalty.
--   War adds ×1.5, guild bonus and server rate stack on top.
--
-- After exp: drain STAMINA_DRAIN_PER_KILL minutes; increment guild kill counters.

---------------------------------------------------------------------------
-- Config
---------------------------------------------------------------------------
local PvPExpConfig = {
	-- Pool constants tuned so that at full green stamina (the baseline rate = 1.5×)
	-- the output matches the reference table. All bonuses (stamina, events, XP boost,
	-- guild) flow through ExpBonus.getEffectiveRate() — no hardcoded divisions needed.
	-- Equal-level kill at rate 1.5: BASE_POOL_PER_LEVEL * 3/200 * 1.5 ≈ 240 levels.
	BASE_POOL_PER_LEVEL     = 10667,  -- = 16000 / 1.5

	-- Gap fraction calibrated for baseline rate = 1.5.
	-- At ratio 20x (power 0.7) and rate 1.5: ≈ 0.008 × 8.15 × 1.5 ≈ 9.8% of gap per kill.
	-- 0 = disable gap-based catch-up.
	GAP_FRACTION            = 0.008,  -- = 0.012 / 1.5

	-- Power applied to (victimLevel/attackerLevel) ratio when scaling the gap fraction.
	-- 0   = no ratio scaling (pure % of gap regardless of difficulty)
	-- 0.7 = moderate scaling: ratio 20x → ×8.1, ratio 5x → ×3.1, ratio 2x → ×1.6
	-- 1.0 = linear scaling with ratio
	RATIO_POWER             = 0.7,

	WAR_BONUS_MULT          = 1.5,    -- +50% if both players are in a guild war
	MIN_DAMAGE_CONTRIBUTION = 0.05,   -- attacker must deal >= 5% of total player damage
	STAMINA_DRAIN_PER_KILL  = 5,      -- minutes of stamina drained per PvP kill
	SHOW_EXP_TEXT           = true,   -- show floating exp text on gain
}

-- Linear cost approximation constant: cost(L) = COST_FACTOR * L
-- Derived from Tibia's level formula for large L (cost ≈ 200L/3).
local COST_FACTOR = 200 / 3

---------------------------------------------------------------------------
-- Helpers
---------------------------------------------------------------------------
local function getWeekNumber()
	return math.floor(os.time() / 604800)
end

local function incrementGuildKills(attacker)
	local guild = attacker:getGuild()
	if not guild then return end

	local week    = getWeekNumber()
	local weekKey = string.format("gkills.w%d.g%d", week, guild:getId())
	kv.set(weekKey, (kv.get(weekKey) or 0) + 1)

	db.asyncQuery(string.format(
		"INSERT INTO guild_kill_stats (guild_id, week, kills) VALUES (%d, %d, 1)"
		.. " ON DUPLICATE KEY UPDATE kills = kills + 1",
		guild:getId(), week
	))
end

---------------------------------------------------------------------------
-- Event
---------------------------------------------------------------------------
local pvpExp = CreatureEvent("PvPExperience")

function pvpExp.onDeath(creature, corpse, killer, mostDamageKiller, lastHitUnjustified, mostDamageUnjustified)
	-- Only fire for player victims
	if not creature or not creature:isPlayer() then
		return true
	end

	local victim      = creature
	local victimLevel = victim:getLevel()
	local victimId    = victim:getId()

	-- Collect all attacker damage from the damage map
	local damageMap = victim:getDamageMap()
	if not damageMap then return true end

	-- First pass: tally total player damage and per-player totals
	local playerDamage = {}  -- [creatureId] = total damage dealt
	local totalPlayerDmg = 0

	for creatureId, dmgData in pairs(damageMap) do
		local attacker = Creature(creatureId)
		if attacker and attacker:isPlayer() then
			local dmg = dmgData.total or 0
			playerDamage[creatureId] = dmg
			totalPlayerDmg = totalPlayerDmg + dmg
		end
	end

	if totalPlayerDmg == 0 then return true end

	-- Second pass: award exp to each eligible attacker
	for creatureId, attackerDmg in pairs(playerDamage) do
		local attacker = Player(creatureId)
		if not attacker then goto continue end

		local contributionRatio = attackerDmg / totalPlayerDmg

		-- Skip leechers (< 5% damage)
		if contributionRatio < PvPExpConfig.MIN_DAMAGE_CONTRIBUTION then goto continue end

		-- Anti-abuse: same IP or same account
		if configManager.getBoolean(configKeys.PVP_EXP_BLOCK_SAME_IP) and attacker:getIp() == victim:getIp() then goto continue end
		if configManager.getBoolean(configKeys.PVP_EXP_BLOCK_SAME_ACCOUNT) and attacker:getAccountId() == victim:getAccountId() then goto continue end

		local attackerLevel = attacker:getLevel()

		-- Pool 1 – Gap-based catch-up.
		-- levelsGained_gap = gap * GAP_FRACTION * ratio^RATIO_POWER
		-- (cost(L) cancels: pool/cost = gap * frac * ratio^pow)
		local ratio     = victimLevel / attackerLevel
		local levelGap  = math.max(0, victimLevel - attackerLevel)
		local ratioMult = math.pow(ratio, PvPExpConfig.RATIO_POWER)
		local gapPool   = levelGap * PvPExpConfig.GAP_FRACTION * ratioMult * (COST_FACTOR * attackerLevel)

		-- Pool 2 – Base reward: same formula as before, ensures equal-level kills still pay.
		local basePool  = victimLevel * PvPExpConfig.BASE_POOL_PER_LEVEL

		local totalPool = gapPool + basePool

		-- War bonus (PvP-only multiplier)
		local warMult = isInWar(attacker:getId(), victimId) and PvPExpConfig.WAR_BONUS_MULT or 1.0

		-- Unified rate: stamina × base rate × (1 + guild + XP boost).
		-- Pool constants are calibrated so rate = 1.5 (full green stamina) gives reference values.
		-- Events, double-exp, low stamina, store boosts all flow through here automatically.
		local expRate = ExpBonus.getEffectiveRate(attacker)

		-- Final exp
		local finalExp = math.floor(
			totalPool
			* contributionRatio
			* warMult
			* expRate
		)

		if finalExp > 0 then
			attacker:addExperience(finalExp, PvPExpConfig.SHOW_EXP_TEXT)
		end

		-- Drain stamina
		local newStamina = math.max(0, attacker:getStamina() - PvPExpConfig.STAMINA_DRAIN_PER_KILL)
		attacker:setStamina(newStamina)

		-- Increment guild kill counter (KV + DB)
		incrementGuildKills(attacker)

		::continue::
	end

	return true
end

pvpExp:register()
