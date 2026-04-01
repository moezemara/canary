local internalNpcName = "Joey Termijnen Male Stripper"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Joey Termijnen Male Stripper"
npcConfig.description = "Joey Termijnen Male Stripper"

npcConfig.health = 150
npcConfig.maxHealth = 150
npcConfig.walkInterval = 4000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 145,
	lookHead = 94,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 114,
	lookAddons = 0,
}

npcConfig.flags = {
	floorchange = false,
}

npcConfig.shop = {}

npcType:register(npcConfig)
