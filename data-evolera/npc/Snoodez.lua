local internalNpcName = "Snoodez"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Snoodez"
npcConfig.description = "Snoodez"

npcConfig.health = 1000
npcConfig.maxHealth = 1000
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 75,
	lookHead = 114,
	lookBody = 19,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: data/npc/scripts/sellitems.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
