local mType = Game.createMonsterType("Mutated Baterino")
local monster = {}

monster.description = "a mutated Baterino"
monster.experience = 615
monster.outfit = {
	lookType = 307,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 240000000
monster.maxHealth = 240000000
monster.race = "blood"
monster.corpse = 9829
monster.speed = 400
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 900, minDamage = -30000000, maxDamage = -35000000},
}

monster.defenses = {
	defense = 30,
	armor = 30,
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = 85},
		{type = COMBAT_ENERGYDAMAGE, percent = 85},
		{type = COMBAT_EARTHDAMAGE, percent = 85},
		{type = COMBAT_HOLYDAMAGE, percent = 85},
		{type = COMBAT_DEATHDAMAGE, percent = 85},
		{type = COMBAT_FIREDAMAGE, percent = 85},
		{type = COMBAT_PHYSICALDAMAGE, percent = 85},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 50},
}

mType:register(monster)
