local internalNpcName = "Spell Seller"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Spell Seller"
npcConfig.description = "Spell Seller"

npcConfig.health = 100
npcConfig.maxHealth = 100
npcConfig.walkInterval = 50000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 129,
	lookHead = 95,
	lookBody = 116,
	lookLegs = 121,
	lookFeet = 115,
	lookAddons = 3,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: data/npc/scripts/spell_trade.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
