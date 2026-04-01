local internalNpcName = "Loot Buyer"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Loot Buyer"
npcConfig.description = "Loot Buyer"

npcConfig.health = 100
npcConfig.maxHealth = 100
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 132,
	lookHead = 114,
	lookBody = 114,
	lookLegs = 94,
	lookFeet = 94,
	lookAddons = 3,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: dalootbuyer.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
