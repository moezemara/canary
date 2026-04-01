local internalNpcName = "Maya"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Maya"
npcConfig.description = "Maya"

npcConfig.health = 150
npcConfig.maxHealth = 150
npcConfig.walkInterval = 25
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 142,
	lookHead = 79,
	lookBody = 118,
	lookLegs = 115,
	lookFeet = 114,
	lookAddons = 3,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: data/npc/scripts/bows.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
