local mType = Game.createMonsterType("Angry Cop")
local monster = {}

monster.description = "a Angry Cop"
monster.experience = 1
monster.outfit = {
	lookType = 253,
	lookHead = 115,
	lookBody = 105,
	lookLegs = 119,
	lookFeet = 132,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 10000000
monster.maxHealth = 10000000
monster.race = "blood"
monster.corpse = 6080
monster.speed = 2500
monster.manaCost = 0

monster.changeTarget = {
	interval = 60000,
	chance = 0,
}

monster.strategiesTarget = {
	nearest = 100,
	defense = 7000000,
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
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 20000, skill = 440, attack = 43},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 34, range = 7, radius = 1, target = 1, minDamage = -10, maxDamage = -60, shootEffect = CONST_ANI_INFERNALBOLT},
}

monster.defenses = {
	defense = 30,
	armor = 8000,
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 0},
		{type = COMBAT_ICEDAMAGE, percent = 0},
		{type = COMBAT_ENERGYDAMAGE, percent = 0},
		{type = COMBAT_EARTHDAMAGE, percent = 0},
		{type = COMBAT_DEATHDAMAGE, percent = 0},
}

monster.immunities = {
		{type = "poison", condition = true},
		{type = "paralyze", condition = true},
}

monster.voices = {
	interval = 2000,
	chance = 5,
		{text = "Stopp i lagens kuk!"},
		{text = "bajsaporej!"},
		{text = "nu gor vi upp her din lille fisbomb!"},
}

monster.loot = {
	{id = 2148, chance = 33333, maxCount = 30},
	{id = 2111, chance = 10000, maxCount = 6},
	{id = 2473, chance = 10000},
	{id = 7457, chance = 10000},
	{id = 2460, chance = 10000},
	{id = 2403, chance = 10000},
	{id = 2473, chance = 10000},
	{id = 5913, chance = 10000},
	{id = 2050, chance = 10000},
	{id = 7449, chance = 10000},
	{id = 7461, chance = 1000},
	{id = 2320, chance = 10000},
}

mType:register(monster)
