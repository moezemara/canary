local internalNpcName = "Rebirth"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Rebirth"
npcConfig.description = "Rebirth"

npcConfig.health = 100
npcConfig.maxHealth = 100
npcConfig.walkInterval = 2000
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

-- Original 8.6 script reference: data/npc/scripts/rebirth.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
