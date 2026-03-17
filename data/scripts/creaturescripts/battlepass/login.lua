local battlePassOnLogin = CreatureEvent("BattlePassOnLogin")

function battlePassOnLogin.onLogin(player)
	-- Register the per-session kill tracker and extended opcode handler
	player:registerEvent("BattlePassOnKill")
	player:registerEvent("BattlePassExtendedOpcode")

	-- Daily login XP — once per calendar day
	local kv    = BattlePass.getKv(player)
	BattlePass.ensureSeason(kv)
	local today = os.date("%Y-%m-%d")
	if (kv:get("login_today") or "") ~= today then
		kv:set("login_today", today)
		BattlePass.grantXP(player, BattlePass.XP.DAILY_LOGIN)
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE,
			string.format("[War Pass] Daily login bonus: +%d XP! Type /battlepass to view your progress.", BattlePass.XP.DAILY_LOGIN))
	end

	return true
end

battlePassOnLogin:register()
