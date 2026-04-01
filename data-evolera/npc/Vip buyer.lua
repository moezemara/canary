local internalNpcName = "Rare Buyer"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Rare Buyer"
npcConfig.description = "Rare Buyer"

npcConfig.health = 150
npcConfig.maxHealth = 150
npcConfig.walkInterval = 25
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 309,
	lookHead = 131,
	lookBody = 79,
	lookLegs = 97,
	lookFeet = 132,
	lookAddons = 3,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: Vip buyer.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
