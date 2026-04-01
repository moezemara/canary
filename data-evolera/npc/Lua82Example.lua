local internalNpcName = "Lua82Example Merchant"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Lua82Example Merchant"
npcConfig.description = "Lua82Example Merchant"

npcConfig.health = 150
npcConfig.maxHealth = 150
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 289,
	lookHead = 140,
	lookBody = 64,
	lookLegs = 121,
	lookFeet = 76,
	lookAddons = 3,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: data/npc/scripts/example82.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
