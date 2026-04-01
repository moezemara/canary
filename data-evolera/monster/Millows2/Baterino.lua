local mType = Game.createMonsterType("Baterino")
local monster = {}

monster.description = "a Baterino"
monster.experience = 615
monster.outfit = {
	lookType = 122,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 99000000
monster.maxHealth = 99000000
monster.race = "blood"
monster.corpse = 6053
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
		{name = "melee", interval = 650, minDamage = -9500000, maxDamage = -10500000},
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
