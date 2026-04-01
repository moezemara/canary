local internalNpcName = "Naprawa Firewalker Boots"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Naprawa Firewalker Boots"
npcConfig.description = "Naprawa Firewalker Boots"

npcConfig.health = 100
npcConfig.maxHealth = 100
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 325,
	lookHead = 0,
	lookBody = 79,
	lookLegs = 94,
	lookFeet = 0,
	lookAddons = 1,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: data/npc/scripts/firewalker.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
