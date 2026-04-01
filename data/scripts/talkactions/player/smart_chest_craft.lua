-- Smart Chest System — Key Crafting Talkaction
-- Phase 5: craft keys from Arcane Shards
-- Spec §3 (key table), §9 (key craft costs)
-- Tiers 1–4 only. Infernal (5) and Astral (6) keys cannot be crafted.
-- Usage: /craftkey <iron|silver|golden|shadow>

local CRAFTABLE_KEYS = {
	iron   = 1,
	silver = 2,
	golden = 3,
	shadow = 4,
}

local smartChestCraftKey = TalkAction("/craftkey")

function smartChestCraftKey.onSay(player, words, param)
	local keyName = param:lower():match("^%s*(%a+)%s*$")
	local tier    = keyName and CRAFTABLE_KEYS[keyName]

	if not tier then
		player:sendTextMessage(MESSAGE_FAILURE,
			"Usage: /craftkey <iron|silver|golden|shadow>")
		return true
	end

	local cost    = SmartChest.KEY_CRAFT_COSTS[tier]
	local keyId   = SmartChest.KEY_IDS[tier]
	local balance = player:getItemCount(SmartChest.SHARD_ID)

	if balance < cost then
		player:sendTextMessage(MESSAGE_FAILURE,
			string.format("Crafting a %s Key costs %d Arcane Shards. You have %d.",
				SmartChest.TIER_NAMES[tier], cost, balance))
		return true
	end

	player:removeItem(SmartChest.SHARD_ID, cost)
	SmartChest.giveItem(player, keyId, 1)

	player:sendTextMessage(MESSAGE_EVENT_ADVANCE,
		string.format("[Smart Chest] Crafted 1 %s Key. -%d Arcane Shards. Shards remaining: %d.",
			SmartChest.TIER_NAMES[tier], cost, balance - cost))

	player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
	return true
end

smartChestCraftKey:separator(" ")
smartChestCraftKey:groupType("normal")
smartChestCraftKey:register()
