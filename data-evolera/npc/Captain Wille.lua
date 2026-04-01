local internalNpcName = "Captain Wille"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Captain Wille"
npcConfig.description = "Captain Wille"

npcConfig.health = 500
npcConfig.maxHealth = 500
npcConfig.walkInterval = 0
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 134,
	lookHead = 114,
	lookBody = 87,
	lookLegs = 0,
	lookFeet = 114,
	lookAddons = 0,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: data/npc/scripts/boat_wille.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
