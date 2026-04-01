local internalNpcName = "Mission Giver"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Mission Giver"
npcConfig.description = "Mission Giver"

npcConfig.health = 100
npcConfig.maxHealth = 100
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 129,
	lookHead = 17,
	lookBody = 54,
	lookLegs = 114,
	lookFeet = 0,
	lookAddons = 2,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: MissionGiver.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
