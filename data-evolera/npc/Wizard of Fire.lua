local internalNpcName = "Wizard of Fire"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Wizard of Fire"
npcConfig.description = "Wizard of Fire"

npcConfig.health = 500
npcConfig.maxHealth = 500
npcConfig.walkInterval = 0
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 130,
	lookHead = 94,
	lookBody = 114,
	lookLegs = 94,
	lookFeet = 114,
	lookAddons = 3,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: data/npc/scripts/burn.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
