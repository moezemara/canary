local internalNpcName = "Minigame"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Minigame"
npcConfig.description = "Minigame"

npcConfig.health = 150
npcConfig.maxHealth = 150
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 134,
	lookHead = 3,
	lookBody = 114,
	lookLegs = 77,
	lookFeet = 0,
	lookAddons = 3,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: default.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
