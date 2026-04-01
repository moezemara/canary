local internalNpcName = "Harry Potter"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Harry Potter"
npcConfig.description = "Harry Potter"

npcConfig.health = 100
npcConfig.maxHealth = 100
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 145,
	lookHead = 114,
	lookBody = 68,
	lookLegs = 58,
	lookFeet = 76,
	lookAddons = 2,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: harrypotter.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
