local internalNpcName = "Negerbarnet"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Negerbarnet"
npcConfig.description = "Negerbarnet"

npcConfig.health = 150
npcConfig.maxHealth = 150
npcConfig.walkInterval = 25
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 134,
	lookHead = 114,
	lookBody = 113,
	lookLegs = 113,
	lookFeet = 113,
	lookAddons = 3,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: data/npc/scripts/seller.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
