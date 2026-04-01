local internalNpcName = "Vial Seller"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Vial Seller"
npcConfig.description = "Vial Seller"

npcConfig.health = 100
npcConfig.maxHealth = 100
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 145,
	lookHead = 114,
	lookBody = 114,
	lookLegs = 78,
	lookFeet = 0,
	lookAddons = 3,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: pet vial.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
