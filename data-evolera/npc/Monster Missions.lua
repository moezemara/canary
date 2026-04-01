local internalNpcName = "Monster Missions"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Monster Missions"
npcConfig.description = "Monster Missions"

npcConfig.health = 200
npcConfig.maxHealth = 200
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 144,
	lookHead = 97,
	lookBody = 97,
	lookLegs = 94,
	lookFeet = 97,
	lookAddons = 3,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: data/npc/scripts/killinginthenameof.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
