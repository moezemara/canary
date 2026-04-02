local setlookcreature = TalkAction("/setlook")

function setlookcreature.onSay(player, words, param)
	-- create log
	logCommand(player, words, param)

	if param == "" then
		player:sendCancelMessage("Usage: /setlook <creature name> or /setlook <player name>, <creature name>")
		return true
	end

	local split = param:split(",")
	local target, creatureName

	if #split >= 2 then
		local targetName = string.trim(split[1])
		target = Player(targetName)
		if not target then
			player:sendCancelMessage("Player '" .. targetName .. "' not found.")
			return true
		end
		creatureName = string.trim(split[2])
	else
		target = player
		creatureName = string.trim(split[1])
	end

	local monsterType = MonsterType(creatureName)
	if not monsterType then
		player:sendCancelMessage("Creature '" .. creatureName .. "' not found.")
		return true
	end

	target:setOutfit(monsterType:getOutfit())
	return true
end

setlookcreature:separator(" ")
setlookcreature:groupType("gamemaster")
setlookcreature:register()
