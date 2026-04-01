local internalNpcName = "The Forgotten King"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "The Forgotten King"
npcConfig.description = "The Forgotten King"

npcConfig.health = 100
npcConfig.maxHealth = 100
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 133,
	lookHead = 20,
	lookBody = 39,
	lookLegs = 45,
	lookFeet = 7,
	lookAddons = 0,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: promotion.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
