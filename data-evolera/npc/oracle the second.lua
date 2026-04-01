local internalNpcName = "The Oracle"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "The Oracle"
npcConfig.description = "The Oracle"

npcConfig.health = 150
npcConfig.maxHealth = 150
npcConfig.walkInterval = 0
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 0,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
}

npcConfig.flags = {
	floorchange = false,
}

npcConfig.shop = {}

npcType:register(npcConfig)
