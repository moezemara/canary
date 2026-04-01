local internalNpcName = "Item Seller [Tokens]"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Item Seller [Tokens]"
npcConfig.description = "Item Seller [Tokens]"

npcConfig.health = 100
npcConfig.maxHealth = 100
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

-- Original 8.6 script reference: token.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
