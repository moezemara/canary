local battlePass = TalkAction("/battlepass")

function battlePass.onSay(player, words, param)
	logger.info("[BattlePass] /battlepass triggered by {}", player:getName())
	if not BattlePass.isOtClient(player) then
		-- Fallback text summary for non-OTClient players
		local kv      = BattlePass.getKv(player)
		BattlePass.ensureSeason(kv)
		local xp      = kv:get("xp") or 0
		local tier    = BattlePass.getCurrentTier(xp)
		local hasPrem = kv:get("has_premium") or false
		local days    = BattlePass.getDaysRemaining()
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE,
			string.format("[War Pass S%d] Tier %d/50 | %d/%d XP | %s | %d days left | Use /bpclaim [tier] to claim rewards.",
				BattlePass.SEASON, tier, xp, BattlePass.TOTAL_TIERS * BattlePass.XP_PER_TIER,
				hasPrem and "PREMIUM" or "Free Track", days))
		return true
	end

	BattlePass.openWindow(player)
	return true
end

battlePass:separator(" ")
battlePass:groupType("normal")
battlePass:register()
