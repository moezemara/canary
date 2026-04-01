local internalNpcName = "Eryn"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Eryn"
npcConfig.description = "Eryn"

npcConfig.health = 100
npcConfig.maxHealth = 100
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 130,
	lookHead = 39,
	lookBody = 122,
	lookLegs = 125,
	lookFeet = 57,
	lookAddons = 0,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: runes.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
