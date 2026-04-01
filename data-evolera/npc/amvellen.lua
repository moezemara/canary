local internalNpcName = "Amvellen"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Amvellen"
npcConfig.description = "Amvellen"

npcConfig.health = 100
npcConfig.maxHealth = 100
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 302,
	lookHead = 17,
	lookBody = 54,
	lookLegs = 114,
	lookFeet = 0,
	lookAddons = 2,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: amvellens.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
