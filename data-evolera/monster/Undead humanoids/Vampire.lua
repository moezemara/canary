local mType = Game.createMonsterType("vampire")
local monster = {}

monster.description = "a vampire"
monster.experience = 305
monster.outfit = {
	lookType = 68,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 475
monster.maxHealth = 475
monster.race = "undead"
monster.corpse = 6006
monster.speed = 255
monster.manaCost = 100

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
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 62, attack = 68},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 19, range = 1, minDamage = -25, maxDamage = -125, effect = CONST_ME_REDSHIMMER},
		{name = "speed", interval = 1000, chance = 8, radius = 6, target = 0, speedchange = -600, duration = 60000, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 23,
	armor = 17,
		{name = "outfit", interval = 1500, chance = 20, duration = 6000},
		{name = "outfit", interval = 1500, chance = 20, duration = 6000},
		{name = "speed", interval = 1500, chance = 120, speedchange = 300, duration = 30000},
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 35},
		{type = COMBAT_FIREDAMAGE, percent = -10},
		{type = COMBAT_HOLYDAMAGE, percent = -25},
}

monster.immunities = {
		{type = "earth", condition = true},
		{type = "death", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 100,
		{text = "BLOOD!", yell = true},
		{text = "Let me kiss your neck."},
		{text = "I smell warm blood."},
		{text = "I call you, my bats! Come!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 9},
	{id = 2649, chance = 8000},
	{id = 2383, chance = 1666},
	{id = 5905, chance = 2000},
	{id = 2172, chance = 200},
	{id = 2127, chance = 200},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2148, chance = 2500, maxCount = 4},
			{id = 2032, chance = 10000},
			{id = 2229, chance = 10000, maxCount = 3},
			{id = 2412, chance = 15000},
			{id = 2747, chance = 18000},
			{id = 2534, chance = 500},
			{id = 2396, chance = 600},
			{id = 2144, chance = 1538, maxCount = 3},
			{id = 2479, chance = 1428},
		}
	},
}

mType:register(monster)
