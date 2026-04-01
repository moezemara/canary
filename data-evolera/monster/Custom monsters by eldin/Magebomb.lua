local mType = Game.createMonsterType("Magebomb")
local monster = {}

monster.description = "a Magebomber"
monster.experience = 480000
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
monster.health = 1900
monster.maxHealth = 1900
monster.race = "blood"
monster.corpse = 6080
monster.speed = 370
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
	runHealth = 18,
}

monster.attacks = {
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 2000, chance = 50, range = 7, minDamage = -220, maxDamage = -250, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 2000, chance = 50, range = 7, minDamage = -190, maxDamage = -220, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICETORNADO},
}

monster.defenses = {
	defense = 73,
	armor = 70,
}

monster.summons = {
		{name = "Magebomb", chance = 0, interval = 50000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 100,
		{text = "Noob!"},
		{text = "Noob 2x!"},
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
