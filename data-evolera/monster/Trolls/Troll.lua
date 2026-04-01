local mType = Game.createMonsterType("troll")
local monster = {}

monster.description = "a troll"
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
monster.speed = 126
monster.manaCost = 290

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
	runHealth = 15,
}

monster.attacks = {
		{name = "melee", interval = 1500, skill = 15, attack = 10},
}

monster.defenses = {
	defense = 8,
	armor = 6,
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = 20},
		{type = COMBAT_EARTHDAMAGE, percent = -13},
		{type = COMBAT_HOLYDAMAGE, percent = 10},
		{type = COMBAT_DEATHDAMAGE, percent = -7},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Grrrr"},
		{text = "Groar"},
		{text = "Gruntz!"},
		{text = "Hmmm, bugs."},
		{text = "Hmmm, dogs."},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 10},
	{id = 2389, chance = 33333},
	{id = 2643, chance = 10000},
	{id = 2461, chance = 20000},
	{id = 2120, chance = 23333},
	{id = 2172, chance = 3333},
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
