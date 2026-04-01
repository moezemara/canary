local internalNpcName = "Staff Info"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Staff Info"
npcConfig.description = "Staff Info"

npcConfig.health = 1
npcConfig.maxHealth = 150
npcConfig.walkInterval = 4000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 132,
	lookHead = 78,
	lookBody = 114,
	lookLegs = 120,
	lookFeet = 114,
	lookAddons = 1,
}

npcConfig.flags = {
	floorchange = false,
}

npcConfig.shop = {}

npcType:register(npcConfig)
