local mType = Game.createMonsterType("elf")
local monster = {}

monster.description = "a elf"
monster.experience = 42
monster.outfit = {
	lookType = 62,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 100
monster.maxHealth = 100
monster.race = "blood"
monster.corpse = 6003
monster.speed = 220
monster.manaCost = 320

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
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 20, attack = 12},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 5, range = 7, minDamage = -15, maxDamage = -35, shootEffect = CONST_ANI_ARROW},
}

monster.defenses = {
	defense = 12,
	armor = 6,
}

monster.immunities = {
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Ulathil beia Thratha!"},
		{text = "Bahaha aka!"},
		{text = "You are not welcome here."},
		{text = "Flee as long as you can."},
		{text = "Death to the defilers!"},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 15},
	{id = 2544, chance = 800000, maxCount = 6},
	{id = 2480, chance = 10000},
	{id = 2484, chance = 20000},
	{id = 2478, chance = 4000},
	{id = 2643, chance = 25000},
	{id = 2005, chance = 6666},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2397, chance = 5000},
			{id = 2674, chance = 800000, maxCount = 4},
			{id = 2642, chance = 9000},
			{id = 2456, chance = 6666},
			{id = 5921, chance = 5000},
		}
	},
}

mType:register(monster)
