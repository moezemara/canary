local removePremiumPass = TalkAction("/removepremiumpass")

function removePremiumPass.onSay(player, words, param)
	logCommand(player, words, param)

	if param == "" then
		player:sendCancelMessage("Usage: /removepremiumpass <playername>")
		return true
	end

	local targetPlayer = Player(param:trim())
	if not targetPlayer then
		player:sendCancelMessage("Player not found or is offline.")
		return true
	end

	local kv = BattlePass.getKv(targetPlayer)
	BattlePass.ensureSeason(kv)
	kv:set("has_premium", false)

	targetPlayer:sendTextMessage(MESSAGE_EVENT_ADVANCE,
		string.format("[War Pass] Your Season %d Premium Pass has been revoked.", BattlePass.SEASON))
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE,
		string.format("Revoked Season %d Premium Pass from %s.", BattlePass.SEASON, targetPlayer:getName()))
	logger.info("{} revoked War Pass premium from {}", player:getName(), targetPlayer:getName())
	return true
end

removePremiumPass:separator(" ")
removePremiumPass:groupType("god")
removePremiumPass:register()
