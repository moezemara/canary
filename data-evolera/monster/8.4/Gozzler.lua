local mType = Game.createMonsterType("Gozzler")
local monster = {}

monster.description = "a gozzler"
monster.experience = 200
monster.outfit = {
	lookType = 313,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 300
monster.maxHealth = 300
monster.race = "blood"
monster.corpse = 6053
monster.speed = 400
monster.manaCost = 800

monster.changeTarget = {
	interval = 4000,
	chance = 8,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = true,
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
		{name = "melee", interval = 2000, skill = 49, attack = 53},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 14, range = 1, minDamage = -1000, maxDamage = -1500, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 20,
	armor = 25,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 15, minDamage = 102, maxDamage = 800},
		{name = "speed", interval = 1000, chance = 9, speedchange = 1201, duration = 3000},
}

monster.elements = {
		{type = COMBAT_DEATHDAMAGE, percent = 50},
		{type = COMBAT_HOLYDAMAGE, percent = 50},
		{type = COMBAT_PHYSICALDAMAGE, percent = -30},
}

monster.immunities = {
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 3500,
	chance = 10,
		{text = "Huhuhuhuuu!"},
		{text = "Let the fun begin!"},
		{text = "Yihahaha!"},
		{text = "I'll bite you! Nyehehehehe!"},
}

monster.loot = {
	{id = 2015, chance = 9000},
	{id = 2148, chance = 100000, maxCount = 53},
	{id = 2394, chance = 7000},
	{id = 2385, chance = 7000},
	{id = 2051, chance = 15000},
	{id = 2510, chance = 9000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2378, chance = 1500},
			{id = 2409, chance = 1500},
			{id = 2423, chance = 1500},
			{id = 2213, chance = 400},
			{id = 2146, chance = 300},
		}
	},
}

mType:register(monster)
