local internalNpcName = "Merchant Glut"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Merchant Glut"
npcConfig.description = "Merchant Glut"

npcConfig.health = 150
npcConfig.maxHealth = 150
npcConfig.walkInterval = 4000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 100,
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
