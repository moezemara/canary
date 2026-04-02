local setaddon = TalkAction("/setaddon")

function setaddon.onSay(player, words, param)
	-- create log
	logCommand(player, words, param)

	if param == "" then
		player:sendCancelMessage("Usage: /setaddon <addon 0-3> or /setaddon <creature name>, <addon 0-3>")
		return true
	end

	local split = param:split(",")
	local target, addonValue

	if #split >= 2 then
		local creatureName = string.trim(split[1])
		target = Creature(creatureName)
		if not target then
			player:sendCancelMessage("Creature '" .. creatureName .. "' not found.")
			return true
		end
		addonValue = tonumber(string.trim(split[2]))
	else
		target = player
		addonValue = tonumber(string.trim(split[1]))
	end

	if not addonValue or addonValue < 0 or addonValue > 3 then
		player:sendCancelMessage("Invalid addon value. Use 0 (none), 1 (first), 2 (second), or 3 (both).")
		return true
	end

	print("[setaddon] step 1: getOutfit")
	local outfit = target:getOutfit()
	print(string.format("[setaddon] current outfit: lookType=%s lookTypeEx=%s lookAddons=%s lookWing=%s lookAura=%s lookEffect=%s lookShader=%s",
		tostring(outfit.lookType), tostring(outfit.lookTypeEx), tostring(outfit.lookAddons),
		tostring(outfit.lookWing), tostring(outfit.lookAura), tostring(outfit.lookEffect), tostring(outfit.lookShader)))
	outfit.lookAddons = addonValue
	print("[setaddon] step 2: setOutfit with lookAddons=" .. tostring(addonValue))
	target:setOutfit(outfit)
	print("[setaddon] done")
	return true
end

setaddon:separator(" ")
setaddon:groupType("gamemaster")
setaddon:register()
