local mType = Game.createMonsterType("Koko The Best")
local monster = {}

monster.description = "a koko the best"
monster.experience = 30
monster.outfit = {
	lookType = 281,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 900000000
monster.maxHealth = 900000000
monster.race = "blood"
monster.corpse = 7926
monster.speed = 990
monster.manaCost = 340

monster.changeTarget = {
	interval = 2000,
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
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 20,
}

monster.attacks = {
		{name = "melee", interval = 20, skill = 100, attack = 2000000},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 2000, chance = 25, radius = 4, target = 0, minDamage = -10000000, maxDamage = -22000000, effect = CONST_ME_ICEAREA},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 25, range = 7, minDamage = -10000000, maxDamage = -14000000, shootEffect = CONST_ANI_FIRE},
}

monster.defenses = {
	defense = 8,
	armor = 8,
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = 22},
		{type = COMBAT_HOLYDAMAGE, percent = 11},
		{type = COMBAT_EARTHDAMAGE, percent = -3},
		{type = COMBAT_DEATHDAMAGE, percent = -4},
}

monster.voices = {
	interval = 3000,
	chance = 40,
		{text = "MASRY???"},
		{text = "ENTA MASRY?"},
		{text = "PLS PLS PLS PLS ITENS"},
		{text = "GRRRRRRRRRRRRRRRRRRR!"},
		{text = "A7A"},
		{text = "A8A"},
}

monster.loot = {
	{id = 2148, chance = 6000, maxCount = 12},
	{id = 2380, chance = 1800},
	{id = 2643, chance = 1000},
	{id = 2461, chance = 1000},
	{id = 2666, chance = 1500},
	{id = 2120, chance = 8000},
	{id = 2389, chance = 2000},
	{id = 2448, chance = 5000},
	{id = 2512, chance = 1500},
}

mType:register(monster)
