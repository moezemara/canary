local internalNpcName = "Fritzly"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Fritzly"
npcConfig.description = "Fritzly"

npcConfig.health = 150
npcConfig.maxHealth = 150
npcConfig.walkInterval = 0
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 131,
	lookHead = 19,
	lookBody = 19,
	lookLegs = 19,
	lookFeet = 19,
	lookAddons = 0,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: cityguard.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
