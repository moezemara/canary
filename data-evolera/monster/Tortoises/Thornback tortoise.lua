local mType = Game.createMonsterType("thornback tortoise")
local monster = {}

monster.description = "a thornback tortoise"
monster.experience = 150
monster.outfit = {
	lookType = 198,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 300
monster.maxHealth = 300
monster.race = "blood"
monster.corpse = 6073
monster.speed = 200
monster.manaCost = 490

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
	convinceable = true,
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
		{name = "melee", interval = 2000, skill = 53, attack = 54},
}

monster.defenses = {
	defense = 18,
	armor = 18,
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 10},
		{type = COMBAT_EARTHDAMAGE, percent = 15},
		{type = COMBAT_ICEDAMAGE, percent = 10},
		{type = COMBAT_FIREDAMAGE, percent = -10},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 80},
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 5678, chance = 14000, maxCount = 3},
	{id = 2667, chance = 10000, maxCount = 3},
	{id = 2789, chance = 2000, maxCount = 4},
	{id = 2391, chance = 2000},
	{id = 2787, chance = 15000, maxCount = 2},
	{id = 2671, chance = 17000, maxCount = 2},
}

mType:register(monster)
