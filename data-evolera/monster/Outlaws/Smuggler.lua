local mType = Game.createMonsterType("smuggler")
local monster = {}

monster.description = "a smuggler"
monster.experience = 48
monster.outfit = {
	lookType = 134,
	lookHead = 95,
	lookBody = 0,
	lookLegs = 113,
	lookFeet = 115,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 130
monster.maxHealth = 130
monster.race = "blood"
monster.corpse = 6080
monster.speed = 210
monster.manaCost = 390

monster.changeTarget = {
	interval = 5000,
	chance = 8,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 18,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 23, attack = 19},
}

monster.defenses = {
	defense = 13,
	armor = 10,
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "I will silence you forever!"},
		{text = "You saw something you shouldn't!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 2465, chance = 10000},
	{id = 2461, chance = 10000},
	{id = 2649, chance = 10000},
	{id = 2671, chance = 20000, maxCount = 2},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2456, chance = 6666},
			{id = 2544, chance = 10000, maxCount = 15},
			{id = 2147, chance = 3333, maxCount = 2},
			{id = 2675, chance = 6666, maxCount = 4},
			{id = 2690, chance = 6666, maxCount = 4},
			{id = 2050, chance = 20000},
			{id = 2478, chance = 3333},
			{id = 2652, chance = 2222},
			{id = 2201, chance = 2500},
		}
	},
}

mType:register(monster)
