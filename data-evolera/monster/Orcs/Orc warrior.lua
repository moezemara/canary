local mType = Game.createMonsterType("orc warrior")
local monster = {}

monster.description = "a orc warrior"
monster.experience = 50
monster.outfit = {
	lookType = 7,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 125
monster.maxHealth = 125
monster.race = "blood"
monster.corpse = 5979
monster.speed = 190
monster.manaCost = 360

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
		{name = "melee", interval = 2000, minDamage = -20, maxDamage = -60},
}

monster.defenses = {
	defense = 14,
	armor = 8,
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Grow truk grrrr."},
		{text = "Trak grrrr brik."},
		{text = "Alk!"},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 12},
	{id = 2666, chance = 40000, maxCount = 2},
	{id = 2512, chance = 10000},
	{id = 2530, chance = 4000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2385, chance = 6666},
			{id = 2464, chance = 5000},
			{id = 2420, chance = 5000},
			{id = 2448, chance = 5000},
			{id = 2007, chance = 20000},
		}
	},
}

mType:register(monster)
