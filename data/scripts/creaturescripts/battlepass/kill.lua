local battlePassOnKill = CreatureEvent("BattlePassOnKill")

function battlePassOnKill.onKill(player, target, isPlayer)
	local xp = isPlayer and BattlePass.XP.PVP_KILL or BattlePass.XP.MONSTER_KILL
	BattlePass.grantXP(player, xp)
	return true
end

battlePassOnKill:register()
