local internalNpcName = "Talent"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Talent"
npcConfig.description = "Talent"

npcConfig.health = 100
npcConfig.maxHealth = 100
npcConfig.walkInterval = 20000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 140,
	lookHead = 39,
	lookBody = 134,
	lookLegs = 135,
	lookFeet = 47,
	lookAddons = 0,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: data/npc/scripts/talentnpc.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
