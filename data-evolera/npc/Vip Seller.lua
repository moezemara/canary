local internalNpcName = "Rare Seller"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Rare Seller"
npcConfig.description = "Rare Seller"

npcConfig.health = 150
npcConfig.maxHealth = 150
npcConfig.walkInterval = 25
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 332,
	lookHead = 131,
	lookBody = 79,
	lookLegs = 97,
	lookFeet = 132,
	lookAddons = 3,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: Vip Seller.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
