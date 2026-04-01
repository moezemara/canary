-- Smart Chest System — Exchange Talkaction
-- Phase 5: spend 300 exchange_shards (open-only counter) to pick any rare item from a tier.
-- Spec §9: exchange_shards tracks opens only — NOT tradeable shard spends or trades.
--          Available for tiers 1–4 only. Spending resets only that tier's counter.
-- Usage:
--   /exchange status              — show all tier exchange progress
--   /exchange list <tier_name>    — list rare items for that tier
--   /exchange claim <tier_name> <item_index>  — claim an item by index from the rare pool

local EXCHANGE_TIER_NAMES = {
	wooden  = 1,
	silver  = 2,
	golden  = 3,
	obsidian = 4,
}

local function getTierFromParam(name)
	return name and EXCHANGE_TIER_NAMES[name:lower()]
end

-- Show exchange progress for all eligible tiers
local function showStatus(player)
	local lines = { "[Smart Chest Exchange] Progress toward 300 (opens only):" }
	for tier = 1, SmartChest.EXCHANGE_MAX_TIER do
		local state = SmartChest.getState(player:getGuid(), tier)
		table.insert(lines, string.format("  %s: %d / 300%s",
			SmartChest.TIER_NAMES[tier],
			state.exchange_shards,
			state.exchange_shards >= SmartChest.EXCHANGE_COST and " [READY — use /exchange list " .. SmartChest.TIER_NAMES[tier]:lower() .. "]" or ""))
	end
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, table.concat(lines, "\n"))
end

-- List rare pool items for a tier (numbered for /exchange claim)
local function listItems(player, tier)
	local pool = SmartChest.LOOT_POOLS[tier].rare
	if not pool then
		player:sendTextMessage(MESSAGE_FAILURE, "No rare pool defined for that tier.")
		return
	end
	local lines = { string.format("[%s Chest — Rare Pool] Use /exchange claim %s <number>:",
		SmartChest.TIER_NAMES[tier], SmartChest.TIER_NAMES[tier]:lower()) }
	for i, entry in ipairs(pool) do
		local itype = ItemType(entry.itemId)
		local name  = itype and itype:getName() or ("item " .. entry.itemId)
		table.insert(lines, string.format("  %d. %s", i, name))
	end
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, table.concat(lines, "\n"))
end

-- Claim a specific item by index from the rare pool
local function claimItem(player, tier, index)
	-- Validate tier
	if tier > SmartChest.EXCHANGE_MAX_TIER then
		player:sendTextMessage(MESSAGE_FAILURE,
			"Exchange is only available for Wooden, Silver, Golden, and Obsidian chests.")
		return
	end

	local state = SmartChest.getState(player:getGuid(), tier)

	if state.exchange_shards < SmartChest.EXCHANGE_COST then
		player:sendTextMessage(MESSAGE_FAILURE,
			string.format("You need %d exchange progress for %s. You have %d.",
				SmartChest.EXCHANGE_COST, SmartChest.TIER_NAMES[tier], state.exchange_shards))
		return
	end

	local pool = SmartChest.LOOT_POOLS[tier].rare
	if not pool or not pool[index] then
		player:sendTextMessage(MESSAGE_FAILURE,
			string.format("Invalid item number. Use /exchange list %s to see options.",
				SmartChest.TIER_NAMES[tier]:lower()))
		return
	end

	local entry = pool[index]

	-- Deduct 300 from exchange_shards counter and save
	-- Note: exchange_shards is separate from the tradeable Arcane Shard item
	SmartChest.saveState(
		player:getGuid(), tier,
		state.fortune_count,
		state.exchange_shards - SmartChest.EXCHANGE_COST,
		state.total_opens
	)

	-- Award item (always count 1 for exchange — player picks the specific item)
	SmartChest.giveItem(player, entry.itemId, 1)

	local itype = ItemType(entry.itemId)
	local name  = itype and itype:getName() or "item"

	player:sendTextMessage(MESSAGE_EVENT_ADVANCE,
		string.format("[Smart Chest Exchange] Claimed: %s from the %s rare pool. Exchange progress reset to %d.",
			name,
			SmartChest.TIER_NAMES[tier],
			state.exchange_shards - SmartChest.EXCHANGE_COST
		))

	player:getPosition():sendMagicEffect(CONST_ME_HOLYAREA)
end

-- ═══════════════════════════════════════════
--              TALKACTION HANDLER
-- ═══════════════════════════════════════════

local smartChestExchange = TalkAction("/exchange")

function smartChestExchange.onSay(player, words, param)
	local args = {}
	for word in param:gmatch("%S+") do
		table.insert(args, word:lower())
	end

	local subcommand = args[1]

	if not subcommand or subcommand == "status" then
		showStatus(player)
		return true
	end

	if subcommand == "list" then
		local tier = getTierFromParam(args[2])
		if not tier then
			player:sendTextMessage(MESSAGE_FAILURE,
				"Usage: /exchange list <wooden|silver|golden|obsidian>")
			return true
		end
		if tier > SmartChest.EXCHANGE_MAX_TIER then
			player:sendTextMessage(MESSAGE_FAILURE,
				"Exchange is only available for Tiers 1–4.")
			return true
		end
		listItems(player, tier)
		return true
	end

	if subcommand == "claim" then
		local tier  = getTierFromParam(args[2])
		local index = tonumber(args[3])
		if not tier or not index then
			player:sendTextMessage(MESSAGE_FAILURE,
				"Usage: /exchange claim <wooden|silver|golden|obsidian> <item_number>")
			return true
		end
		claimItem(player, tier, index)
		return true
	end

	player:sendTextMessage(MESSAGE_FAILURE,
		"Usage: /exchange status | /exchange list <tier> | /exchange claim <tier> <number>")
	return true
end

smartChestExchange:separator(" ")
smartChestExchange:groupType("normal")
smartChestExchange:register()
