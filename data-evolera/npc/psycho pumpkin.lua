local internalNpcName = "Psycho Pumpkin"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Psycho Pumpkin"
npcConfig.description = "Psycho Pumpkin"

npcConfig.health = 1337
npcConfig.maxHealth = 1337
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 292,
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
