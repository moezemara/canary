local mType = Game.createMonsterType("acolyte Of The Cult")
local monster = {}

monster.description = "an acolyte of the cult"
monster.experience = 300
monster.outfit = {
	lookType = 194,
	lookHead = 114,
	lookBody = 121,
	lookLegs = 121,
	lookFeet = 57,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 390
monster.maxHealth = 390
monster.race = "blood"
monster.corpse = 6080
monster.speed = 230
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
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 5,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = 50, maxDamage = 105},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 3000, chance = 17, range = 7, radius = 1, target = 1, minDamage = -10, maxDamage = -100, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 17, range = 7, radius = 1, target = 1, minDamage = -50, maxDamage = -185, effect = CONST_ME_POISON},
		{name = "drunk", interval = 1000, chance = 15, range = 7, radius = 1, target = 1, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 20,
	armor = 10,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 25, minDamage = 30, maxDamage = 50},
}

monster.immunities = {
		{type = "fire", condition = true},
		{type = "poison", condition = true},
}

monster.summons = {
		{name = "Skeleton", chance = 10000, interval = 2000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Praise voodoo!"},
}

monster.loot = {
	{id = 2148, chance = 40000, maxCount = 54},
	{id = 2149, chance = 2000},
	{id = 2201, chance = 1793},
	{id = 6087, chance = 1428},
	{id = 2394, chance = 3333},
	{id = 2169, chance = 1000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2181, chance = 1333},
			{id = 2168, chance = 1428},
			{id = 5810, chance = 555},
			{id = 2652, chance = 1666},
			{id = 5801, chance = 909},
		}
	},
}

mType:register(monster)
