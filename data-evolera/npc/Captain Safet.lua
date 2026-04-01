local internalNpcName = "Kimos Father"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Kimos Father"
npcConfig.description = "Kimos Father"

npcConfig.health = 100
npcConfig.maxHealth = 100
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 134,
	lookHead = 0,
	lookBody = 59,
	lookLegs = 0,
	lookFeet = 59,
	lookAddons = 0,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: Safetboat.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
