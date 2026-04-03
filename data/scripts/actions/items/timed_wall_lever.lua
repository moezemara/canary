local CONFIG = {
	-- Action IDs to set on the items in the map editor
	leverAid     = 10001,              -- AID set on the lever item in the map
	wallAid      = 10002,              -- AID set on the wall item in the map

	-- Wall position: only coordinate needed (also where countdown text appears)
	wallPosition = Position(2423, 955, 7), -- TODO: set wall tile coordinates

	duration     = 120,
	openMessage  = "[Global] The bridge fence has been opened for 120 seconds!",
	closeMessage = "[Global] The bridge fence has been closed!",
}

local isActive        = false
local savedWallItemId = nil
local savedLeverPos   = nil
local remainingSeconds = 0

local function restoreWall()
	local newWall = Game.createItem(savedWallItemId, 1, CONFIG.wallPosition)
	if newWall then
		newWall:setActionId(CONFIG.wallAid)
	end

	local leverTile = Tile(savedLeverPos)
	if leverTile then
		for _, tileItem in ipairs(leverTile:getItems()) do
			if tileItem:getActionId() == CONFIG.leverAid then
				tileItem:transform(tileItem.itemid - 1)
				break
			end
		end
	end

	Game.broadcastMessage(CONFIG.closeMessage, MESSAGE_GAME_HIGHLIGHT)

	isActive        = false
	savedWallItemId = nil
	savedLeverPos   = nil
	remainingSeconds = 0
end

local function countdown(seconds)
	remainingSeconds = seconds
	if seconds <= 0 then
		restoreWall()
		return
	end

	local players = Game.getPlayers()
	if players[1] then
		players[1]:say(tostring(seconds), TALKTYPE_MONSTER_SAY, false, players[1], CONFIG.wallPosition)
	end

	addEvent(countdown, 1000, seconds - 1)
end

local timedWallLever = Action()

function timedWallLever.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if isActive then
		player:sendTextMessage(MESSAGE_FAILURE, "The fence is already open! It closes in " .. remainingSeconds .. " second" .. (remainingSeconds == 1 and "." or "s."))
		return true
	end

	savedLeverPos = item:getPosition()
	item:transform(item.itemid + 1)

	local wallTile = Tile(CONFIG.wallPosition)
	if wallTile then
		for _, tileItem in ipairs(wallTile:getItems()) do
			if tileItem:getActionId() == CONFIG.wallAid then
				savedWallItemId = tileItem.itemid
				tileItem:remove()
				break
			end
		end
	end

	if not savedWallItemId then
		-- Wall not found — revert lever and abort
		item:transform(item.itemid - 1)
		savedLeverPos = nil
		player:sendTextMessage(MESSAGE_FAILURE, "The fence could not be found.")
		return true
	end

	isActive = true
	Game.broadcastMessage(CONFIG.openMessage, MESSAGE_GAME_HIGHLIGHT)
	addEvent(countdown, 1000, CONFIG.duration)

	return true
end

timedWallLever:aid(CONFIG.leverAid)
timedWallLever:register()
