local internalNpcName = "Safetina The Stripper"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Safetina The Stripper"
npcConfig.description = "Safetina The Stripper"

npcConfig.health = 150
npcConfig.maxHealth = 150
npcConfig.walkInterval = 4000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 149,
	lookHead = 0,
	lookBody = 17,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
}

npcConfig.flags = {
	floorchange = false,
}

npcConfig.shop = {}

npcType:register(npcConfig)
