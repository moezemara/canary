local internalNpcName = "Ruby"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Ruby"
npcConfig.description = "Ruby"

npcConfig.health = 150
npcConfig.maxHealth = 150
npcConfig.walkInterval = 4000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 133,
	lookHead = 20,
	lookBody = 120,
	lookLegs = 75,
	lookFeet = 13,
	lookAddons = 0,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: ruby.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
