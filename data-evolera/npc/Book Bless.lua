local internalNpcName = "Book Bless"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Book Bless"
npcConfig.description = "Book Bless"

npcConfig.health = 100
npcConfig.maxHealth = 100
npcConfig.walkInterval = 2000
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

-- Original 8.6 script reference: data/npc/scripts/bookbless.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
