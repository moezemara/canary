local addCoins = TalkAction("/addcoins")

function addCoins.onSay(player, words, param)
	logCommand(player, words, param)

	if param == "" then
		player:sendCancelMessage("Usage: /addcoins <playername>, <amount>, [coins/transferable]")
		return true
	end

	local split = param:split(",")
	if #split < 2 then
		player:sendCancelMessage("Usage: /addcoins <playername>, <amount>, [coins/transferable]")
		return true
	end

	local targetPlayerName = split[1]:trim()
	local targetPlayer = Player(targetPlayerName)

	if not targetPlayer then
		player:sendCancelMessage("Player not found or is offline.")
		return true
	end

	local amount = tonumber(split[2])
	if not amount or amount <= 0 then
		player:sendCancelMessage("Invalid amount.")
		return true
	end

	local coinType = split[3] and split[3]:trim():lower() or "coins"
	local coinLabel

	if coinType == "transferable" then
		targetPlayer:addTransferableCoins(amount)
		coinLabel = "transferable coins"
	else
		targetPlayer:addTibiaCoins(amount)
		coinLabel = "Tibia coins"
	end

	targetPlayer:sendTextMessage(MESSAGE_EVENT_ADVANCE, string.format("%s has added %d %s to you.", player:getName(), amount, coinLabel))
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, string.format("You have successfully added %d %s to player %s.", amount, coinLabel, targetPlayer:getName()))
	logger.info("{} added {} {} to {} player", player:getName(), amount, coinLabel, targetPlayer:getName())
	return true
end

addCoins:separator(" ")
addCoins:groupType("god")
addCoins:register()
