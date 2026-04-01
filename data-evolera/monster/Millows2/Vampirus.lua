local mType = Game.createMonsterType("Vampirus")
local monster = {}

monster.description = "a Vampirus"
monster.experience = 615
monster.outfit = {
	lookType = 68,
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
monster.corpse = 2956
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
		{name = "melee", interval = 650, minDamage = -10000000, maxDamage = -11000000},
}

monster.defenses = {
	defense = 30,
	armor = 30,
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = 88},
		{type = COMBAT_ENERGYDAMAGE, percent = 88},
		{type = COMBAT_EARTHDAMAGE, percent = 88},
		{type = COMBAT_HOLYDAMAGE, percent = 88},
		{type = COMBAT_DEATHDAMAGE, percent = 88},
		{type = COMBAT_FIREDAMAGE, percent = 88},
		{type = COMBAT_PHYSICALDAMAGE, percent = 88},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 50},
}

mType:register(monster)
