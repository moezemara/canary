local internalNpcName = "Deruno"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Deruno"
npcConfig.description = "Deruno"

npcConfig.health = 100
npcConfig.maxHealth = 100
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 132,
	lookHead = 20,
	lookBody = 39,
	lookLegs = 45,
	lookFeet = 7,
	lookAddons = 0,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: data/npc/scripts/default.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
