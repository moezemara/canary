local internalNpcName = "Dildo Seller"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Dildo Seller"
npcConfig.description = "Dildo Seller"

npcConfig.health = 150
npcConfig.maxHealth = 150
npcConfig.walkInterval = 25
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 128,
	lookHead = 114,
	lookBody = 92,
	lookLegs = 92,
	lookFeet = 0,
	lookAddons = 3,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: data/npc/scripts/dildo.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
