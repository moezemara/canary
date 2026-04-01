local internalNpcName = "Parcel Seller"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = "Parcel Seller"
npcConfig.description = "Parcel Seller"

npcConfig.health = 100
npcConfig.maxHealth = 100
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 144,
	lookHead = 96,
	lookBody = 96,
	lookLegs = 85,
	lookFeet = 4,
	lookAddons = 3,
}

npcConfig.flags = {
	floorchange = false,
}

-- Original 8.6 script reference: data/npc/scripts/Parcel Seller.lua
-- TODO: Rewrite NPC shop/behavior logic in Canary format
npcConfig.shop = {}

npcType:register(npcConfig)
