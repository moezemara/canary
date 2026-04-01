local internalNpcName = "Lola"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Lola"
npcConfig.description = "Lola"

npcConfig.health = 150
npcConfig.maxHealth = 150
npcConfig.walkInterval = 25
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 142,
	lookHead = 114,
	lookBody = 0,
	lookLegs = 95,
	lookFeet = 114,
	lookAddons = 0,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: data/npc/scripts/furniture.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
