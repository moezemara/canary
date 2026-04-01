local internalNpcName = "Helmut"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Helmut"
npcConfig.description = "Helmut"

npcConfig.health = 150
npcConfig.maxHealth = 150
npcConfig.walkInterval = 7500
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 133,
	lookHead = 20,
	lookBody = 120,
	lookLegs = 75,
	lookFeet = 13,
	lookAddons = 0,
}

npcConfig.flags = {
	floorchange = false,
}

npcConfig.shop = {}

npcType:register(npcConfig)
