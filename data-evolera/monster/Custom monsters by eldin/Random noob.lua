local mType = Game.createMonsterType("Random Noob")
local monster = {}

monster.description = "a random noob"
monster.experience = 480000
monster.outfit = {
	lookType = 129,
	lookHead = 36,
	lookBody = 83,
	lookLegs = 116,
	lookFeet = 78,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1900
monster.maxHealth = 1900
monster.race = "blood"
monster.corpse = 2212
monster.speed = 390
monster.manaCost = 390

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
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 3,
	runHealth = 50,
}

monster.defenses = {
	defense = 93,
	armor = 90,
}

monster.summons = {
		{name = "Magebomb", chance = 100, interval = 10, max = 1},
		{name = "Magebomb", chance = 100, interval = 30, max = 1},
		{name = "Magebomb", chance = 100, interval = 50, max = 1},
		{name = "Magebomb", chance = 100, interval = 70, max = 1},
		{name = "Magebomb", chance = 100, interval = 90, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Come here, free itenz!"},
		{text = "Come, look! A bug!"},
		{text = "I found a bug! Come and look!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 2465, chance = 10000},
	{id = 2461, chance = 10000},
	{id = 2649, chance = 10000},
	{id = 2671, chance = 20000, maxCount = 2},
	{id = 3976, chance = 50000, maxCount = 10},
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
