local mType = Game.createMonsterType("frost troll")
local monster = {}

monster.description = "a frost troll"
monster.experience = 23
monster.outfit = {
	lookType = 53,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 55
monster.maxHealth = 55
monster.race = "blood"
monster.corpse = 5998
monster.speed = 190
monster.manaCost = 300

monster.changeTarget = {
	interval = 2000,
	chance = 0,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 10,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 19, attack = 11},
}

monster.defenses = {
	defense = 9,
	armor = 7,
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Brrrr"},
		{text = "Broar!"},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 12},
	{id = 2382, chance = 33333},
	{id = 2512, chance = 10000},
	{id = 2651, chance = 20000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2384, chance = 6666},
			{id = 2667, chance = 20000, maxCount = 2},
			{id = 2448, chance = 40000},
		}
	},
}

mType:register(monster)
