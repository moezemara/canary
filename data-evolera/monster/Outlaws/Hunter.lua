local mType = Game.createMonsterType("hunter")
local monster = {}

monster.description = "a hunter"
monster.experience = 150
monster.outfit = {
	lookType = 129,
	lookHead = 95,
	lookBody = 116,
	lookLegs = 121,
	lookFeet = 115,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 150
monster.maxHealth = 150
monster.race = "blood"
monster.corpse = 6080
monster.speed = 215
monster.manaCost = 0

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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 10,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 20, attack = 30},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 21, range = 7, minDamage = -50, maxDamage = -100, shootEffect = CONST_ANI_ARROW},
}

monster.defenses = {
	defense = 10,
	armor = 8,
}

monster.immunities = {
		{type = "poison", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Guess who we're hunting, haha!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 2465, chance = 10000},
	{id = 2461, chance = 10000},
	{id = 2649, chance = 10000},
	{id = 2671, chance = 20000, maxCount = 2},
	{id = 5875, chance = 5000},
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
