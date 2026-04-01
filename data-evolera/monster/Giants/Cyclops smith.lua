local mType = Game.createMonsterType("Cyclops Smith")
local monster = {}

monster.description = "a cyclops smith"
monster.experience = 255
monster.outfit = {
	lookType = 277,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 435
monster.maxHealth = 435
monster.race = "blood"
monster.corpse = 7741
monster.speed = 190
monster.manaCost = 490

monster.changeTarget = {
	interval = 60000,
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
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 80,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 70, attack = 70},
		{name = "strength", interval = 1000, chance = 11, minDamage = 0, maxDamage = -120, shootEffect = CONST_ANI_WHIRLWINDCLUB},
}

monster.defenses = {
	defense = 25,
	armor = 24,
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = 10},
		{type = COMBAT_ENERGYDAMAGE, percent = 20},
		{type = COMBAT_HOLYDAMAGE, percent = 8},
		{type = COMBAT_EARTHDAMAGE, percent = -10},
		{type = COMBAT_DEATHDAMAGE, percent = -5},
}

monster.voices = {
	interval = 2000,
	chance = 5,
		{text = "Whack da humy"},
		{text = "Outis emoi g' onoma."},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 24},
	{id = 2406, chance = 33333},
	{id = 2381, chance = 1818},
	{id = 2209, chance = 2000},
	{id = 2490, chance = 2857},
	{id = 2129, chance = 6666},
	{id = 2666, chance = 33333, maxCount = 3},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2513, chance = 2500},
			{id = 2511, chance = 2857},
			{id = 2381, chance = 5000},
			{id = 2148, chance = 20000, maxCount = 16},
			{id = 2671, chance = 33333, maxCount = 3},
		}
	},
}

mType:register(monster)
