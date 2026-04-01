local mType = Game.createMonsterType("dragon lord")
local monster = {}

monster.description = "a dragon lord"
monster.experience = 2100
monster.outfit = {
	lookType = 39,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1900
monster.maxHealth = 1900
monster.race = "blood"
monster.corpse = 5984
monster.speed = 245
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
		{name = "melee", interval = 2000, skill = 70, attack = 75},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 22, range = 7, radius = 4, target = 1, minDamage = -100, maxDamage = -180, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 15, range = 7, radius = 4, target = 1, shootEffect = CONST_ANI_FIRE},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 18, length = 8, spread = 3, minDamage = -150, maxDamage = -340, effect = CONST_ME_FIREAREA},
}

monster.defenses = {
	defense = 35,
	armor = 22,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 25, minDamage = 57, maxDamage = 93},
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = 20},
		{type = COMBAT_ICEDAMAGE, percent = -10},
		{type = COMBAT_EARTHDAMAGE, percent = 80},
}

monster.immunities = {
		{type = "fire", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "ZCHHHHH", yell = true},
		{text = "YOU WILL BURN!", yell = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 70},
	{id = 2148, chance = 100000, maxCount = 80},
	{id = 2672, chance = 80000, maxCount = 5},
	{id = 2033, chance = 1818},
	{id = 1976, chance = 3333},
	{id = 2413, chance = 5000},
	{id = 2498, chance = 1188},
	{id = 7378, chance = 2000, maxCount = 2},
	{id = 2547, chance = 8222, maxCount = 7},
	{id = 2796, chance = 6666},
	{id = 5948, chance = 5000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2148, chance = 100000, maxCount = 100},
			{id = 2149, chance = 833, maxCount = 2},
			{id = 2392, chance = 1428},
			{id = 2146, chance = 3222, maxCount = 2},
			{id = 2528, chance = 2033},
			{id = 7402, chance = 1833},
			{id = 2414, chance = 1309},
			{id = 5882, chance = 5000},
		}
	},
}

mType:register(monster)
