-- Smart Chest System — Open Action
-- Phase 1: basic open (key validation, two-stage roll, shard award)
-- Phase 2: Fortune Counter guarantee + x10 bulk open (11 items)
-- Spec §3 (key rules), §4 (two-stage roll), §6 (shards), §7 (Fortune Counter), §8 (bulk open)

-- ═══════════════════════════════════════════
--              SINGLE OPEN LOGIC
-- ═══════════════════════════════════════════

-- Performs one roll against the loot pool and updates the Fortune Counter.
-- Returns:
--   result   = { itemId, count, subPool ('common'|'uncommon'|'rare') }
--   newState = { fortune_count, exchange_shards, total_opens }
local function performSingleRoll(playerId, tier, quality, currentState)
	local fortune_count   = currentState.fortune_count
	local exchange_shards = currentState.exchange_shards
	local total_opens     = currentState.total_opens

	local cap       = SmartChest.FORTUNE_CAP[tier]
	local forcedRare = (fortune_count >= cap)

	-- Stage 1: pick sub-pool
	local subPool = SmartChest.rollSubPool(quality, forcedRare)
	local isRare  = (subPool == "rare")

	-- Stage 2: pick item within sub-pool
	local pool   = SmartChest.LOOT_POOLS[tier][subPool]
	local result = SmartChest.rollItem(pool)
	result.subPool = subPool

	-- Update fortune counter
	if isRare then
		fortune_count = 0
	else
		fortune_count = fortune_count + 1
	end

	-- Exchange shards only increment from opens (spec §9)
	exchange_shards = exchange_shards + 1
	total_opens     = total_opens + 1

	return result, {
		fortune_count   = fortune_count,
		exchange_shards = exchange_shards,
		total_opens     = total_opens,
	}
end

-- ═══════════════════════════════════════════
--              OPEN x1
-- ═══════════════════════════════════════════

local function openChestSingle(player, chestItem, keyItem, tier, quality)
	local playerId = player:getGuid()
	local state    = SmartChest.getState(playerId, tier)

	local result, newState = performSingleRoll(playerId, tier, quality, state)
	local shards = SmartChest.rollShards(tier)

	-- Save state
	SmartChest.saveState(playerId, tier, newState.fortune_count, newState.exchange_shards, newState.total_opens)

	-- Award loot
	SmartChest.giveItem(player, result.itemId, result.count)
	SmartChest.giveItem(player, SmartChest.SHARD_ID, shards)

	-- Consume chest and key
	chestItem:remove(1)
	keyItem:remove(1)

	-- Feedback message
	local tierName    = SmartChest.TIER_NAMES[tier]
	local qualityName = SmartChest.QUALITY_NAMES[quality]
	local cap         = SmartChest.FORTUNE_CAP[tier]
	local itemType    = ItemType(result.itemId)
	local itemName    = itemType and itemType:getName() or "an item"

	player:sendTextMessage(MESSAGE_EVENT_ADVANCE,
		string.format("[%s Chest - %s] You received: %s (x%d). +%d Arcane Shards. Fortune: %d / %d.",
			tierName, qualityName,
			itemName, result.count,
			shards,
			newState.fortune_count, cap
		)
	)

	-- Broadcast for Crimson and Celestial rare drops (spec §14 Phase 6 preview)
	if tier >= 5 and result.subPool == "rare" then
		local broadcastMsg = string.format("%s opened a %s Chest and found a %s!", player:getName(), tierName, itemName)
		Game.broadcastMessage(broadcastMsg, MESSAGE_EVENT_ADVANCE)
	end
end

-- ═══════════════════════════════════════════
--              OPEN x10 (bulk)
-- ═══════════════════════════════════════════
-- Spec §8: requires 10 matching chests + 10 matching keys, awards 11 items.
-- Fortune Counter advances per roll and can trigger mid-bulk.

local function openChestBulk(player, tier, quality)
	local playerId = player:getGuid()
	local state    = SmartChest.getState(playerId, tier)

	local chestId = SmartChest.CHEST_IDS[tier]
	local keyId   = SmartChest.KEY_IDS[tier]

	-- Validate inventory counts
	local chestCount = player:getItemCount(chestId)
	local keyCount   = player:getItemCount(keyId)
	if chestCount < 10 then
		player:sendTextMessage(MESSAGE_FAILURE, "You need at least 10 " .. SmartChest.TIER_NAMES[tier] .. " Chests to bulk open.")
		return
	end
	if keyCount < 10 then
		player:sendTextMessage(MESSAGE_FAILURE, "You need at least 10 " .. SmartChest.KEY_IDS[tier] .. " keys to bulk open.")
		return
	end

	-- Collect up to 10 chest items and verify quality uniformity
	local allChestItems = SmartChest.getInventoryItems(player, chestId)
	local chestsToUse = {}
	for _, item in ipairs(allChestItems) do
		if #chestsToUse >= 10 then break end
		local _, q = SmartChest.getTierAndQuality(item:getActionId())
		q = q or SmartChest.QUALITY_INTACT
		if #chestsToUse == 0 or q == quality then
			table.insert(chestsToUse, item)
		end
	end

	if #chestsToUse < 10 then
		player:sendTextMessage(MESSAGE_FAILURE, "All 10 chests must be the same quality for a bulk open.")
		return
	end

	-- 11 rolls: 10 standard + 1 bonus (same pool, same quality)
	local results  = {}
	local totalShards = 0
	local currentState = state
	local fortuneResetRoll = nil  -- which roll index caused a reset (for message)

	for i = 1, 11 do
		local result, newState = performSingleRoll(playerId, tier, quality, currentState)
		local shards = SmartChest.rollShards(tier)
		totalShards  = totalShards + shards

		-- Track when fortune resets (rare hit)
		if result.subPool == "rare" and currentState.fortune_count ~= 0 then
			fortuneResetRoll = i
		end

		table.insert(results, { itemId = result.itemId, count = result.count, subPool = result.subPool })
		currentState = newState
	end

	-- Save final state after all 11 rolls
	SmartChest.saveState(playerId, tier, currentState.fortune_count, currentState.exchange_shards, currentState.total_opens)

	-- Remove 10 chests and 10 keys from inventory
	for _, item in ipairs(chestsToUse) do
		item:remove(1)
	end
	player:removeItem(keyId, 10)

	-- Award all items and shards
	for _, r in ipairs(results) do
		SmartChest.giveItem(player, r.itemId, r.count)
	end
	SmartChest.giveItem(player, SmartChest.SHARD_ID, totalShards)

	-- Build summary message
	local tierName    = SmartChest.TIER_NAMES[tier]
	local qualityName = SmartChest.QUALITY_NAMES[quality]
	local cap         = SmartChest.FORTUNE_CAP[tier]

	local itemList = {}
	for _, r in ipairs(results) do
		local itype = ItemType(r.itemId)
		local name  = itype and itype:getName() or "item"
		table.insert(itemList, name .. (r.count > 1 and " x" .. r.count or ""))
	end

	local msg = string.format("[%s Chest x10+1 — %s] Items: %s. +%d Arcane Shards. Fortune: %d / %d.",
		tierName, qualityName,
		table.concat(itemList, ", "),
		totalShards,
		currentState.fortune_count, cap
	)
	if fortuneResetRoll then
		msg = msg .. string.format(" (Fortune reset on roll %d.)", fortuneResetRoll)
	end
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, msg)

	-- Broadcast Crimson/Celestial rare hits (spec §14 Phase 6 preview)
	if tier >= 5 then
		for _, r in ipairs(results) do
			if r.subPool == "rare" then
				local itype = ItemType(r.itemId)
				local name  = itype and itype:getName() or "a rare item"
				Game.broadcastMessage(string.format("%s opened a %s Chest and found a %s!", player:getName(), tierName, name), MESSAGE_EVENT_ADVANCE)
				break  -- one broadcast per bulk open is enough
			end
		end
	end
end

-- ═══════════════════════════════════════════
--              ACTION REGISTRATION
-- ═══════════════════════════════════════════

local smartChestOpen = Action()

function smartChestOpen.onUse(player, item, fromPosition, itemEx, toPosition)
	print("[SmartChest] onUse fired — item=" .. tostring(item:getId()) .. " itemEx=" .. tostring(itemEx and itemEx:getId() or "nil"))

	-- item = key (registered on KEY_IDS), itemEx = chest
	local tier = SmartChest.KEY_TIER[item:getId()]
	if not tier then
		print("[SmartChest] item is not a smart chest key, ignoring")
		return false
	end

	-- itemEx must be the matching chest
	if not itemEx or not itemEx.getId then
		print("[SmartChest] no itemEx — player used key without a target chest")
		player:sendTextMessage(MESSAGE_FAILURE, "Use this key on a Smart Chest.")
		return true
	end

	print("[SmartChest] itemEx id=" .. itemEx:getId() .. " CHEST_TIER=" .. tostring(SmartChest.CHEST_TIER[itemEx:getId()]))

	local chestTier = SmartChest.CHEST_TIER[itemEx:getId()]
	if chestTier ~= tier then
		player:sendTextMessage(MESSAGE_FAILURE, "This key does not match the chest tier.")
		return true
	end

	-- chestItem = itemEx, keyItem = item
	local chestItem = itemEx
	local keyItem   = item

	-- Determine quality from actionid (default Intact if no actionid set)
	local actionId = chestItem:getActionId()
	local _, quality
	if actionId >= 1000 then
		_, quality = SmartChest.getTierAndQuality(actionId)
	end
	quality = quality or SmartChest.QUALITY_INTACT
	print("[SmartChest] tier=" .. tier .. " quality=" .. quality)

	-- Detect bulk open: player has >= 10 of each
	local chestId = SmartChest.CHEST_IDS[tier]
	local keyId   = SmartChest.KEY_IDS[tier]
	if player:getItemCount(chestId) >= 10 and player:getItemCount(keyId) >= 10 then
		local chestItems  = SmartChest.getInventoryItems(player, chestId)
		local allSameQual = true
		local firstQual   = nil
		local checked     = 0
		for _, ci in ipairs(chestItems) do
			if checked >= 10 then break end
			local _, q = SmartChest.getTierAndQuality(ci:getActionId())
			q = q or SmartChest.QUALITY_INTACT
			if firstQual == nil then
				firstQual = q
			elseif q ~= firstQual then
				allSameQual = false
				break
			end
			checked = checked + 1
		end

		if allSameQual and firstQual ~= nil then
			print("[SmartChest] triggering bulk open tier=" .. tier)
			openChestBulk(player, tier, firstQual)
			return true
		end
	end

	-- Single open
	print("[SmartChest] triggering single open")
	openChestSingle(player, chestItem, keyItem, tier, quality)
	return true
end

-- Register for all 6 key IDs (player uses key ON chest)
for _, keyId in pairs(SmartChest.KEY_IDS) do
	print("[SmartChest] registering action for key id=" .. keyId)
	smartChestOpen:id(keyId)
end

smartChestOpen:register()
