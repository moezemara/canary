local mType = Game.createMonsterType("valkyrie")
local monster = {}

monster.description = "a valkyrie"
monster.experience = 85
monster.outfit = {
	lookType = 139,
	lookHead = 113,
	lookBody = 57,
	lookLegs = 95,
	lookFeet = 113,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 190
monster.maxHealth = 190
monster.race = "blood"
monster.corpse = 6081
monster.speed = 200
monster.manaCost = 450

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
	runHealth = 10,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 24, attack = 25},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 10, range = 7, minDamage = 0, maxDamage = -50, shootEffect = CONST_ANI_SPEAR},
}

monster.defenses = {
	defense = 14,
	armor = 16,
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = 10},
		{type = COMBAT_HOLYDAMAGE, percent = 7},
		{type = COMBAT_FIREDAMAGE, percent = 10},
		{type = COMBAT_PHYSICALDAMAGE, percent = -8},
		{type = COMBAT_DEATHDAMAGE, percent = -7},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Another head for me!"},
		{text = "Stand still!"},
		{text = "One more head for me!"},
		{text = "Head off!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 12},
	{id = 2464, chance = 6666},
	{id = 2125, chance = 4500},
	{id = 2387, chance = 4000},
	{id = 2458, chance = 5500},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2674, chance = 10000, maxCount = 4},
			{id = 3965, chance = 10000},
			{id = 2666, chance = 20000, maxCount = 3},
			{id = 2147, chance = 1500},
			{id = 2145, chance = 1500},
			{id = 2200, chance = 2000},
			{id = 2463, chance = 1800},
		}
	},
}

mType:register(monster)
