local internalNpcName = "Item seller [GN]"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Item seller [GN]"
npcConfig.description = "Item seller [GN]"

npcConfig.health = 100
npcConfig.maxHealth = 100
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 134,
	lookHead = 87,
	lookBody = 86,
	lookLegs = 86,
	lookFeet = 87,
	lookAddons = 3,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: itemseller.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
