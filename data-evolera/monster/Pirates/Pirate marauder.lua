local mType = Game.createMonsterType("pirate marauder")
local monster = {}

monster.description = "a pirate marauder"
monster.experience = 125
monster.outfit = {
	lookType = 93,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 210
monster.maxHealth = 210
monster.race = "blood"
monster.corpse = 6080
monster.speed = 230
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
	canPushCreatures = false,
	staticAttackChance = 50,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -0, maxDamage = -140},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 20, range = 7, minDamage = -0, maxDamage = -65, shootEffect = CONST_ANI_SPEAR},
}

monster.defenses = {
	defense = 20,
	armor = 15,
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Plundeeeeer!"},
}

monster.loot = {
	{id = 2148, chance = 42000, maxCount = 80},
	{id = 2376, chance = 15000},
	{id = 2050, chance = 18000},
	{id = 5917, chance = 916},
	{id = 2464, chance = 6666},
	{id = 6098, chance = 5000},
	{id = 6095, chance = 5000},
	{
		id = 5926, chance = 100000,
		childs = {
			{id = 5091, chance = 1666},
			{id = 5792, chance = 3333},
			{id = 6126, chance = 1428},
			{id = 6098, chance = 1428},
			{id = 6097, chance = 1428},
		}
	},
}

mType:register(monster)
