local internalNpcName = "Johnny"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Johnny"
npcConfig.description = "Johnny"

npcConfig.health = 100
npcConfig.maxHealth = 100
npcConfig.walkInterval = 20000000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 133,
	lookHead = 114,
	lookBody = 119,
	lookLegs = 132,
	lookFeet = 114,
	lookAddons = 3,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: data/npc/scripts/promotion.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
