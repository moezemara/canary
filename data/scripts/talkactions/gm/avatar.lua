local avatars = {
	["light"]  = { lookType = 1594, name = "Avatar of Light" },
	["steel"]  = { lookType = 1593, name = "Avatar of Steel" },
	["storm"]  = { lookType = 1595, name = "Avatar of Storm" },
	["nature"] = { lookType = 1596, name = "Avatar of Nature" },
}

local vocationAvatars = {
	[3] = "light",  -- paladin
	[7] = "light",  -- royal paladin
	[4] = "steel",  -- knight
	[8] = "steel",  -- elite knight
	[1] = "storm",  -- sorcerer
	[5] = "storm",  -- master sorcerer
	[2] = "nature", -- druid
	[6] = "nature", -- elder druid
}

local avatar = TalkAction("/avatar")

function avatar.onSay(player, words, param)
	-- create log
	logCommand(player, words, param)

	local key
	if param ~= "" then
		key = string.lower(string.trim(param))
	else
		key = vocationAvatars[player:getVocation():getId()]
	end

	local avatarData = avatars[key]
	if not avatarData then
		player:sendCancelMessage("Usage: /avatar <light | steel | storm | nature>")
		return true
	end

	local duration = 15000
	local condition = Condition(CONDITION_OUTFIT)
	condition:setTicks(duration)
	condition:setOutfit({ lookType = avatarData.lookType })

	print("[avatar] step 1: sendMagicEffect")
	player:getPosition():sendMagicEffect(CONST_ME_AVATAR_APPEAR)
	print("[avatar] step 2: addCondition")
	player:addCondition(condition)
	print("[avatar] step 3: avatarTimer")
	player:avatarTimer((os.time() * 1000) + duration)
	print("[avatar] step 4: reloadData")
	player:reloadData()
	print("[avatar] step 5: addEvent ReloadDataEvent")
	addEvent(ReloadDataEvent, duration, player:getId())
	print("[avatar] done")
	return true
end

avatar:separator(" ")
avatar:groupType("gamemaster")
avatar:register()
