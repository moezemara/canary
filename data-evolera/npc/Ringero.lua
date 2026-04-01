local internalNpcName = "Ringero"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Ringero"
npcConfig.description = "Ringero"

npcConfig.health = 150
npcConfig.maxHealth = 150
npcConfig.walkInterval = 25
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 133,
	lookHead = 114,
	lookBody = 119,
	lookLegs = 132,
	lookFeet = 114,
	lookAddons = 0,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: data/npc/scripts/rings.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
