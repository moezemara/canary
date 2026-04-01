local internalNpcName = "Little Helper"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Little Helper"
npcConfig.description = "Little Helper"

npcConfig.health = 150
npcConfig.maxHealth = 150
npcConfig.walkInterval = 4000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 133,
	lookHead = 10,
	lookBody = 122,
	lookLegs = 19,
	lookFeet = 10,
	lookAddons = 0,
}

npcConfig.flags = {
	floorchange = false,
}

npcConfig.shop = {}

npcType:register(npcConfig)
