local mType = Game.createMonsterType("dragon")
local monster = {}

monster.description = "a dragon"
monster.experience = 700
monster.outfit = {
	lookType = 34,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1000
monster.maxHealth = 1000
monster.race = "blood"
monster.corpse = 5973
monster.speed = 180
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 20,
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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 300,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 50, attack = 50},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 15, range = 7, radius = 4, target = 1, minDamage = -65, maxDamage = -115, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 3000, chance = 15, length = 8, spread = 3, minDamage = -110, maxDamage = -170, effect = CONST_ME_FIREAREA},
}

monster.defenses = {
	defense = 25,
	armor = 25,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 13, minDamage = 34, maxDamage = 56},
}

monster.elements = {
		{type = COMBAT_EARTHDAMAGE, percent = 80},
		{type = COMBAT_ENERGYDAMAGE, percent = 20},
		{type = COMBAT_ICEDAMAGE, percent = 10},
}

monster.immunities = {
		{type = "fire", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "GROOAAARRR", yell = true},
		{text = "FCHHHHH", yell = true},
}

monster.loot = {
	{id = 2672, chance = 20000, maxCount = 3},
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2455, chance = 6666},
	{id = 2434, chance = 1333},
	{id = 2509, chance = 1818},
	{id = 2406, chance = 20000},
	{id = 2647, chance = 2222},
	{id = 2457, chance = 3333},
	{id = 2387, chance = 4000},
	{id = 7430, chance = 4000},
	{id = 2397, chance = 5000},
	{id = 5877, chance = 4000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2398, chance = 90000},
			{id = 2516, chance = 1300},
			{id = 2145, chance = 1538, maxCount = 3},
			{id = 2177, chance = 2000},
			{id = 2413, chance = 3200},
			{id = 2409, chance = 1800},
			{id = 5920, chance = 5000, maxCount = 2},
		}
	},
}

mType:register(monster)
