local internalNpcName = "Battle NPC"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Battle NPC"
npcConfig.description = "Battle NPC"

npcConfig.health = 150
npcConfig.maxHealth = 150
npcConfig.walkInterval = 0
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 129,
	lookHead = 114,
	lookBody = 119,
	lookLegs = 114,
	lookFeet = 114,
	lookAddons = 0,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: battlenpc.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
