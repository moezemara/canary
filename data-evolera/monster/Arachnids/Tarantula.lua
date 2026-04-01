local mType = Game.createMonsterType("tarantula")
local monster = {}

monster.description = "a tarantula"
monster.experience = 120
monster.outfit = {
	lookType = 219,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 225
monster.maxHealth = 225
monster.race = "venom"
monster.corpse = 6060
monster.speed = 280
monster.manaCost = 485

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
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 37, attack = 38},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 20, range = 1, minDamage = -20, maxDamage = -30, shootEffect = CONST_ANI_POISON},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 14, range = 1, target = 1, minDamage = 0, maxDamage = 0, effect = CONST_ME_PLANTATTACK},
}

monster.defenses = {
	defense = 17,
	armor = 15,
		{name = "speed", interval = 1000, chance = 13, speedchange = 314, duration = 5000},
}

monster.elements = {
		{type = COMBAT_EARTHDAMAGE, percent = 100},
		{type = COMBAT_ENERGYDAMAGE, percent = 10},
		{type = COMBAT_FIREDAMAGE, percent = -15},
		{type = COMBAT_ICEDAMAGE, percent = -10},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 45},
	{id = 2478, chance = 20000},
	{id = 2463, chance = 2800},
	{id = 2457, chance = 2300},
	{id = 2169, chance = 1000},
}

mType:register(monster)
