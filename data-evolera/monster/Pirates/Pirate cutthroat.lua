local mType = Game.createMonsterType("pirate cutthroat")
local monster = {}

monster.description = "a pirate cutthroat"
monster.experience = 175
monster.outfit = {
	lookType = 96,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 325
monster.maxHealth = 325
monster.race = "blood"
monster.corpse = 6080
monster.speed = 230
monster.manaCost = 495

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
	pushable = true,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 60},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1500, chance = 13, range = 1, radius = 1, target = 1, minDamage = -0, maxDamage = -90, effect = CONST_ME_EXPLOSION},
}

monster.defenses = {
	defense = 23,
	armor = 25,
}

monster.loot = {
	{id = 2148, chance = 50000, maxCount = 53},
	{id = 2483, chance = 10000},
	{id = 5918, chance = 6666},
	{id = 6095, chance = 5000},
	{id = 5710, chance = 2500},
	{id = 5553, chance = 2500},
	{
		id = 5927, chance = 100000,
		childs = {
			{id = 5091, chance = 1666},
			{id = 2509, chance = 4000},
			{id = 5792, chance = 3333},
			{id = 2376, chance = 6666},
			{id = 6126, chance = 3000},
			{id = 6098, chance = 3000},
			{id = 6097, chance = 3000},
		}
	},
}

mType:register(monster)
