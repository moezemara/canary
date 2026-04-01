local internalNpcName = "Tyoric"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Tyoric"
npcConfig.description = "Tyoric"

npcConfig.health = 100
npcConfig.maxHealth = 100
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 134,
	lookHead = 57,
	lookBody = 59,
	lookLegs = 40,
	lookFeet = 76,
	lookAddons = 0,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: data/npc/scripts/default.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
