local mType = Game.createMonsterType("Firo Devolo")
local monster = {}

monster.description = "a Firo Devolo"
monster.experience = 0
monster.outfit = {
	lookType = 40,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1337
monster.maxHealth = 1337
monster.race = "blood"
monster.corpse = 5960
monster.speed = 250
monster.manaCost = 290

monster.changeTarget = {
	interval = 2000,
	chance = 30,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = false,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 1500, skill = 15, attack = -1000000000000},
}

monster.defenses = {
	defense = 8,
	armor = 6,
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = 20},
		{type = COMBAT_HOLYDAMAGE, percent = 10},
		{type = COMBAT_EARTHDAMAGE, percent = -4},
		{type = COMBAT_DEATHDAMAGE, percent = -5},
}

monster.voices = {
	interval = 5000,
	chance = 50,
		{text = "Knock Knock"},
		{text = "Who's There?"},
		{text = "Me I KILL YOU!"},
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
