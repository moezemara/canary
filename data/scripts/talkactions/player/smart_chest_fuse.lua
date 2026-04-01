-- Smart Chest System — Chest Fusion Talkaction
-- Phase 5: combine 3 identical chests (same tier, same quality) + 120 shards → next tier Intact chest
-- Spec §9 (fusion cost 120 shards), §12 Tab 3 (fusion rules)
-- Maximum fusion: Golden (tier 3) → Obsidian (tier 4). Cannot fuse Obsidian or higher.
-- Result chest is always Intact (quality resets on fusion).
-- Usage: /fuse <wooden|silver|golden>

local FUSABLE_TIERS = {
	wooden  = 1,
	silver  = 2,
	golden  = 3,
}

local smartChestFuse = TalkAction("/fuse")

function smartChestFuse.onSay(player, words, param)
	local tierName = param:lower():match("^%s*(%a+)%s*$")
	local tier     = tierName and FUSABLE_TIERS[tierName]

	if not tier then
		player:sendTextMessage(MESSAGE_FAILURE,
			"Usage: /fuse <wooden|silver|golden>. Maximum fusion is Golden → Obsidian.")
		return true
	end

	if tier > SmartChest.FUSION_MAX_TIER then
		player:sendTextMessage(MESSAGE_FAILURE,
			"You can only fuse Wooden, Silver, or Golden chests (max result: Obsidian).")
		return true
	end

	local chestId   = SmartChest.CHEST_IDS[tier]
	local resultId  = SmartChest.CHEST_IDS[tier + 1]
	local cost      = SmartChest.FUSION_COST
	local balance   = player:getItemCount(SmartChest.SHARD_ID)

	-- Collect up to 3 chests of the same tier and check quality uniformity
	local chestItems  = SmartChest.getInventoryItems(player, chestId)
	local candidates  = {}
	local targetQual  = nil  -- quality of the first chest found

	for _, item in ipairs(chestItems) do
		if #candidates >= 3 then break end
		local _, q = SmartChest.getTierAndQuality(item:getActionId())
		q = q or SmartChest.QUALITY_INTACT
		if targetQual == nil then
			targetQual = q
		elseif q ~= targetQual then
			-- Different qualities — skip this one
			break
		end
		table.insert(candidates, item)
	end

	if #candidates < 3 then
		player:sendTextMessage(MESSAGE_FAILURE,
			string.format("You need 3 %s Chests of the same quality to fuse. All chests must share the same quality.",
				SmartChest.TIER_NAMES[tier]))
		return true
	end

	if balance < cost then
		player:sendTextMessage(MESSAGE_FAILURE,
			string.format("Fusing chests costs %d Arcane Shards. You have %d.", cost, balance))
		return true
	end

	-- Consume inputs
	for _, item in ipairs(candidates) do
		item:remove(1)
	end
	player:removeItem(SmartChest.SHARD_ID, cost)

	-- Award result: next-tier Intact chest (no actionid = Intact)
	SmartChest.giveItem(player, resultId, 1)

	player:sendTextMessage(MESSAGE_EVENT_ADVANCE,
		string.format("[Smart Chest] Fused 3 %s Chests into 1 %s Chest (Intact). -%d Arcane Shards. Shards remaining: %d.",
			SmartChest.TIER_NAMES[tier],
			SmartChest.TIER_NAMES[tier + 1],
			cost, balance - cost))

	player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	return true
end

smartChestFuse:separator(" ")
smartChestFuse:groupType("normal")
smartChestFuse:register()
