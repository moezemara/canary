local battlePassOnDeath = CreatureEvent("BattlePassOnDeath")

function battlePassOnDeath.onDeath(creature, corpse, killer, mostDamageKiller, unjustified, mostDamageUnjustified)
	-- Prefer last-hit killer, fall back to most-damage dealer
	local playerKiller = nil
	if killer and killer:isPlayer() then
		playerKiller = Player(killer:getId())
	elseif mostDamageKiller and mostDamageKiller:isPlayer() then
		playerKiller = Player(mostDamageKiller:getId())
	end

	if not playerKiller then return true end

	local xp = creature:isPlayer() and BattlePass.XP.PVP_KILL or BattlePass.XP.MONSTER_KILL
	BattlePass.grantXP(playerKiller, xp)
	return true
end

-- Register on all monster types at startup so onDeath fires for PvE kills
local battlePassDeathStartup = GlobalEvent("BattlePassDeathRegistration")

function battlePassDeathStartup.onStartup()
	for _, mtype in pairs(Game.getMonsterTypes()) do
		mtype:registerEvent("BattlePassOnDeath")
	end
end

battlePassDeathStartup:register()
battlePassOnDeath:register()
