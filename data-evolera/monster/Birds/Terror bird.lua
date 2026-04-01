local mType = Game.createMonsterType("terror bird")
local monster = {}

monster.description = "a terror bird"
monster.experience = 150
monster.outfit = {
	lookType = 218,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 300
monster.maxHealth = 300
monster.race = "blood"
monster.corpse = 6057
monster.speed = 280
monster.manaCost = 490

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
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 46, attack = 37},
}

monster.defenses = {
	defense = 21,
	armor = 13,
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = 20},
		{type = COMBAT_ICEDAMAGE, percent = 20},
		{type = COMBAT_FIREDAMAGE, percent = -10},
		{type = COMBAT_EARTHDAMAGE, percent = -10},
		{type = COMBAT_DEATHDAMAGE, percent = -5},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "CRAAAHHH!"},
		{text = "Gruuuh Gruuuh."},
		{text = "Carrah Carrah!"},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 2406, chance = 33333},
	{id = 2209, chance = 2000},
	{id = 2463, chance = 3000},
	{id = 2490, chance = 4000},
	{id = 2129, chance = 6666},
	{id = 2666, chance = 33333, maxCount = 3},
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 3976, chance = 30000, maxCount = 10},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2513, chance = 2500},
			{id = 2511, chance = 2857},
			{id = 2381, chance = 5000},
			{id = 3970, chance = 500},
			{id = 2148, chance = 20000, maxCount = 10},
			{id = 2671, chance = 33333, maxCount = 3},
		}
	},
}

mType:register(monster)
