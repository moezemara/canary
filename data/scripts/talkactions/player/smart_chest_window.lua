-- Smart Chest System — /chest talkaction
-- Sends opcode 50 with state data to OTClient to open the Smart Chest window.
-- Falls back to a text summary for non-OTClient players.
-- Opcode 50 buffer format:
--   "f1|e1|t1|f2|e2|t2|f3|e3|t3|f4|e4|t4|f5|e5|t5|f6|e6|t6|shards"
--   f=fortune_count, e=exchange_shards, t=total_opens per tier (6 tiers)
--   shards = current Arcane Shard item count

local OPCODE_SC = 50

local function isOtClient(player)
	return player:getClient().os >= 10  -- CLIENTOS_OTCLIENT_LINUX and above
end

local function buildStateBuffer(player)
	local playerId = player:getGuid()
	local parts = {}
	for tier = 1, 6 do
		local state = SmartChest.getState(playerId, tier)
		table.insert(parts, state.fortune_count)
		table.insert(parts, state.exchange_shards)
		table.insert(parts, state.total_opens)
	end
	table.insert(parts, player:getItemCount(SmartChest.SHARD_ID))
	return table.concat(parts, "|")
end

local smartChestWindow = TalkAction("/chest")

function smartChestWindow.onSay(player, words, param)
	if not isOtClient(player) then
		-- Text fallback for non-OTClient players
		local lines = { "[Smart Chest] Your progress:" }
		local playerId = player:getGuid()
		for tier = 1, 6 do
			local state = SmartChest.getState(playerId, tier)
			local cap   = SmartChest.FORTUNE_CAP[tier]
			table.insert(lines, string.format(
				"  %s — Fortune: %d/%d | Exchange: %d/300 | Opens: %d",
				SmartChest.TIER_NAMES[tier],
				state.fortune_count, cap,
				state.exchange_shards,
				state.total_opens))
		end
		table.insert(lines, string.format("  Arcane Shards: %d",
			player:getItemCount(SmartChest.SHARD_ID)))
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, table.concat(lines, "\n"))
		return true
	end

	-- OTClient: send state via extended opcode
	local buffer = buildStateBuffer(player)
	local msg = NetworkMessage()
	msg:addByte(0x32)
	msg:addByte(OPCODE_SC)
	msg:addString(buffer)
	msg:sendToPlayer(player)
	return true
end

smartChestWindow:separator(" ")
smartChestWindow:groupType("normal")
smartChestWindow:register()
