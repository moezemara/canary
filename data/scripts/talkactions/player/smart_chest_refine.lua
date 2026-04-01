-- Smart Chest System — Refinement Talkaction
-- Phase 3: upgrade chest quality to shift Stage 1 sub-pool weights
-- Spec §5: costs are DELTAS from current quality, not cumulative
-- Usage: /refine <exceptional|flawless|radiant>
-- The player must be holding (or have in top inventory) a chest to refine.

local TARGET_QUALITY_NAMES = {
	exceptional = SmartChest.QUALITY_EXCEPTIONAL,
	flawless    = SmartChest.QUALITY_FLAWLESS,
	radiant     = SmartChest.QUALITY_RADIANT,
}

-- Find the first smart chest in the player's main backpack
local function findChestInInventory(player)
	for _, chestId in pairs(SmartChest.CHEST_IDS) do
		local items = SmartChest.getInventoryItems(player, chestId)
		if items[1] then
			return items[1]
		end
	end
	return nil
end

local smartChestRefine = TalkAction("/refine")

function smartChestRefine.onSay(player, words, param)
	-- Parse target quality
	local targetName   = param:lower():match("^%s*(%a+)%s*$")
	local targetQuality = targetName and TARGET_QUALITY_NAMES[targetName]

	if not targetQuality then
		player:sendTextMessage(MESSAGE_FAILURE,
			"Usage: /refine <exceptional|flawless|radiant>")
		return true
	end

	-- Find a chest in inventory
	local chestItem = findChestInInventory(player)
	if not chestItem then
		player:sendTextMessage(MESSAGE_FAILURE,
			"You must have a Smart Chest in your inventory to refine.")
		return true
	end

	-- Determine tier and current quality from actionid
	local actionId       = chestItem:getActionId()
	local tier, quality  = SmartChest.getTierAndQuality(actionId)

	-- If chest has no actionid set yet, treat as Intact
	if not tier then
		tier    = SmartChest.CHEST_TIER[chestItem:getId()]
		quality = SmartChest.QUALITY_INTACT
	end

	if not tier then
		player:sendTextMessage(MESSAGE_FAILURE, "This item cannot be refined.")
		return true
	end

	-- Cannot refine to same or lower quality
	if targetQuality <= quality then
		player:sendTextMessage(MESSAGE_FAILURE,
			string.format("This chest is already %s. Choose a higher quality.", SmartChest.QUALITY_NAMES[quality]))
		return true
	end

	-- Cannot refine to Radiant if already Radiant
	if quality >= SmartChest.QUALITY_RADIANT then
		player:sendTextMessage(MESSAGE_FAILURE, "This chest is already at maximum quality (Radiant).")
		return true
	end

	-- Calculate delta cost
	local cost = SmartChest.getRefineCost(tier, quality, targetQuality)

	-- Check shard balance
	local shardBalance = player:getItemCount(SmartChest.SHARD_ID)
	if shardBalance < cost then
		player:sendTextMessage(MESSAGE_FAILURE,
			string.format("You need %d Arcane Shards to refine to %s. You have %d.",
				cost, SmartChest.QUALITY_NAMES[targetQuality], shardBalance))
		return true
	end

	-- Deduct shards and update chest actionid
	player:removeItem(SmartChest.SHARD_ID, cost)
	local newActionId = SmartChest.getActionId(tier, targetQuality)
	chestItem:setActionId(newActionId)

	player:sendTextMessage(MESSAGE_EVENT_ADVANCE,
		string.format("[Smart Chest] Refined your %s Chest to %s quality. -%d Arcane Shards. Shards remaining: %d.",
			SmartChest.TIER_NAMES[tier],
			SmartChest.QUALITY_NAMES[targetQuality],
			cost,
			shardBalance - cost
		)
	)

	-- Visual effect at player position
	player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)

	return true
end

smartChestRefine:separator(" ")
smartChestRefine:groupType("normal")
smartChestRefine:register()
