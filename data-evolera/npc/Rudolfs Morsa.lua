local internalNpcName = "Rudolfs Morsa"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Rudolfs Morsa"
npcConfig.description = "Rudolfs Morsa"

npcConfig.health = 100
npcConfig.maxHealth = 100
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 128,
	lookHead = 17,
	lookBody = 54,
	lookLegs = 114,
	lookFeet = 0,
	lookAddons = 2,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: bootmaker.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
