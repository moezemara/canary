-- Fires at server save time. Resets kills_today for online players.
-- Offline players are reset lazily on next login via date check.
local battlePassReset = GlobalEvent("BattlePassDailyReset")

function battlePassReset.onTime(interval)
	for _, player in ipairs(Game.getPlayers()) do
		BattlePass.getKv(player):set("kills_today", 0)
	end
	return true
end

battlePassReset:time(configManager.getString(configKeys.GLOBAL_SERVER_SAVE_TIME))
battlePassReset:register()
