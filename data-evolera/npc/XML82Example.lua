local internalNpcName = "XML82Example Merchant"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "XML82Example Merchant"
npcConfig.description = "XML82Example Merchant"

npcConfig.health = 150
npcConfig.maxHealth = 150
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 134,
	lookHead = 57,
	lookBody = 59,
	lookLegs = 40,
	lookFeet = 76,
	lookAddons = 0,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: data/npc/scripts/default.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
