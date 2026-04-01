local mType = Game.createMonsterType("Island troll")
local monster = {}

monster.description = "a island troll"
monster.experience = 20
monster.outfit = {
	lookType = 15,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 50
monster.maxHealth = 50
monster.race = "blood"
monster.corpse = 5960
monster.speed = 190
monster.manaCost = 290

monster.changeTarget = {
	interval = 5000,
	chance = 20,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = true,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 15,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 19, attack = 12},
}

monster.defenses = {
	defense = 9,
	armor = 7,
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Hmmm, turtles"},
		{text = "HHmmm, dogs"},
		{text = "Groar"},
		{text = "Gruntz!"},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 10},
	{id = 2389, chance = 33333},
	{id = 2643, chance = 10000},
	{id = 2461, chance = 20000},
	{id = 2120, chance = 23333},
	{id = 2172, chance = 3333},
	{id = 5901, chance = 5000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2512, chance = 6666},
			{id = 2666, chance = 30000, maxCount = 2},
			{id = 2380, chance = 10000},
			{id = 2170, chance = 1428},
			{id = 2448, chance = 10000},
		}
	},
}

mType:register(monster)
