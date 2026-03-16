-- Grants playtime XP to every online player every 5 minutes.
local battlePassPlaytime = GlobalEvent("BattlePassPlaytime")

function battlePassPlaytime.onThink(interval)
	for _, player in ipairs(Game.getPlayers()) do
		BattlePass.grantXP(player, BattlePass.XP.PLAYTIME_5MIN)
	end
	return true
end

battlePassPlaytime:interval(5 * 60 * 1000)  -- every 5 minutes
battlePassPlaytime:register()
