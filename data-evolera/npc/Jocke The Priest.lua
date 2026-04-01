local internalNpcName = "Jocke The Priest"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Jocke The Priest"
npcConfig.description = "Jocke The Priest"

npcConfig.health = 100
npcConfig.maxHealth = 100
npcConfig.walkInterval = 20000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 130,
	lookHead = 0,
	lookBody = 76,
	lookLegs = 76,
	lookFeet = 57,
	lookAddons = 0,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: priest.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
