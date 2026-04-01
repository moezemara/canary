local internalNpcName = "Personal PigLeg Stripper"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Personal PigLeg Stripper"
npcConfig.description = "Personal PigLeg Stripper"

npcConfig.health = 150
npcConfig.maxHealth = 150
npcConfig.walkInterval = 4000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 142,
	lookHead = 58,
	lookBody = 18,
	lookLegs = 18,
	lookFeet = 58,
	lookAddons = 0,
}

npcConfig.flags = {
	floorchange = false,
}

npcConfig.shop = {}

npcType:register(npcConfig)
