local addPremiumPass = TalkAction("/addpremiumpass")

function addPremiumPass.onSay(player, words, param)
	logCommand(player, words, param)

	if param == "" then
		player:sendCancelMessage("Usage: /addpremiumpass <playername>")
		return true
	end

	local targetPlayer = Player(param:trim())
	if not targetPlayer then
		player:sendCancelMessage("Player not found or is offline.")
		return true
	end

	local kv = BattlePass.getKv(targetPlayer)
	BattlePass.ensureSeason(kv)
	kv:set("has_premium", true)

	targetPlayer:sendTextMessage(MESSAGE_EVENT_ADVANCE,
		string.format("[War Pass] %s granted you the Season %d Premium Pass! Type /battlepass to view your rewards.",
			player:getName(), BattlePass.SEASON))
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE,
		string.format("Granted Season %d Premium Pass to %s.", BattlePass.SEASON, targetPlayer:getName()))
	logger.info("{} granted War Pass premium to {}", player:getName(), targetPlayer:getName())
	return true
end

addPremiumPass:separator(" ")
addPremiumPass:groupType("god")
addPremiumPass:register()
