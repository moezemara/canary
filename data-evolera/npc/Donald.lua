local internalNpcName = "Donald"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Donald"
npcConfig.description = "Donald"

npcConfig.health = 150
npcConfig.maxHealth = 150
npcConfig.walkInterval = 25
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 128,
	lookHead = 20,
	lookBody = 100,
	lookLegs = 50,
	lookFeet = 99,
	lookAddons = 3,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: data/npc/scripts/food.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
