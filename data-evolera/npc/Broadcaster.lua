local internalNpcName = "Broadcaster"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Broadcaster"
npcConfig.description = "Broadcaster"

npcConfig.health = 100
npcConfig.maxHealth = 100
npcConfig.walkInterval = 1
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 73,
	lookHead = 78,
	lookBody = 88,
	lookLegs = 0,
	lookFeet = 88,
	lookAddons = 3,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: data/npc/scripts/broadcaster.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
