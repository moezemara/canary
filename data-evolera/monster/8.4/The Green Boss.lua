local mType = Game.createMonsterType("The Green Boss")
local monster = {}

monster.description = "a Green Boss"
monster.experience = 440000000
monster.outfit = {
	lookType = 244,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 13000000
monster.maxHealth = 13000000
monster.race = "blood"
monster.corpse = 6336
monster.speed = 500
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8,
}

monster.strategiesTarget = {
	nearest = 225,
	defense = 250,
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
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 80, attack = 80000},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 18, range = 7, minDamage = 10000, maxDamage = -35000, shootEffect = CONST_ANI_LARGEROCK},
}

monster.defenses = {
	defense = 70,
	armor = 70,
		{name = "speed", interval = 2000, chance = 12, speedchange = 480, duration = 4000},
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 50},
		{type = COMBAT_EARTHDAMAGE, percent = 30},
		{type = COMBAT_FIREDAMAGE, percent = 30},
		{type = COMBAT_ICEDAMAGE, percent = 20},
		{type = COMBAT_HOLYDAMAGE, percent = -15},
		{type = COMBAT_ENERGYDAMAGE, percent = -10},
}

monster.immunities = {
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "GROARRR!"},
		{text = "FUCK YOU!"},
		{text = "GRRRRRR!"},
}

monster.loot = {
	{id = 9971, chance = 100000, maxCount = 5},
	{id = 2152, chance = 80000, maxCount = 5},
	{id = 2666, chance = 20000, maxCount = 8},
	{id = 2672, chance = 36000, maxCount = 3},
	{id = 2220, chance = 80000},
	{id = 2228, chance = 5000},
	{id = 2136, chance = 985},
	{id = 2452, chance = 650},
	{id = 6558, chance = 15500},
	{id = 6558, chance = 15500},
	{id = 6500, chance = 6000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2514, chance = 1300},
			{id = 7590, chance = 6900},
			{id = 7591, chance = 5400},
			{id = 7452, chance = 3900},
			{id = 7404, chance = 1900},
			{id = 5944, chance = 7300},
			{id = 2434, chance = 5000},
			{id = 2466, chance = 1777},
			{id = 8889, chance = 999},
		}
	},
}

mType:register(monster)
