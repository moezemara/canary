local mType = Game.createMonsterType("cyclops")
local monster = {}

monster.description = "a cyclops"
monster.experience = 150
monster.outfit = {
	lookType = 22,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 260
monster.maxHealth = 260
monster.race = "blood"
monster.corpse = 5962
monster.speed = 200
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
		{name = "melee", interval = 2000, skill = 35, attack = 35},
}

monster.defenses = {
	defense = 15,
	armor = 15,
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = 25},
		{type = COMBAT_HOLYDAMAGE, percent = 20},
		{type = COMBAT_DEATHDAMAGE, percent = -10},
		{type = COMBAT_EARTHDAMAGE, percent = -10},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Il lorstok human!"},
		{text = "Toks utat."},
		{text = "Human, uh whil dyh!"},
		{text = "Youh ah trak!"},
		{text = "Let da mashing begin!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 40},
	{id = 2209, chance = 2000},
	{id = 2490, chance = 4000},
	{id = 2129, chance = 6666},
	{id = 2666, chance = 33333, maxCount = 3},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2406, chance = 33333},
			{id = 2513, chance = 3000},
			{id = 2511, chance = 6666},
			{id = 2381, chance = 4000},
			{id = 2671, chance = 33333, maxCount = 3},
		}
	},
}

mType:register(monster)
