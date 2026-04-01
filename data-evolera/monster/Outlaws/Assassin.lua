local mType = Game.createMonsterType("Assassin")
local monster = {}

monster.description = "an assassin"
monster.experience = 105
monster.outfit = {
	lookType = 129,
	lookHead = 95,
	lookBody = 95,
	lookLegs = 95,
	lookFeet = 95,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 175
monster.maxHealth = 175
monster.race = "blood"
monster.corpse = 6080
monster.speed = 224
monster.manaCost = 450

monster.changeTarget = {
	interval = 2000,
	chance = 5,
}

monster.strategiesTarget = {
	nearest = 70,
	defense = 20,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 45, attack = 45},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 13, range = 7, minDamage = -28, maxDamage = -38, shootEffect = CONST_ANI_THROWINGSTAR},
		{name = "drunk", interval = 1000, chance = 10, range = 6, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISON},
}

monster.defenses = {
	defense = 40,
	armor = 17,
		{name = "speed", interval = 1000, chance = 9, speedchange = 1201, duration = 3000},
		{name = "invisible", interval = 1000, chance = 9, duration = 2000},
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = -12},
		{type = COMBAT_DEATHDAMAGE, percent = -5},
}

monster.immunities = {
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Die!"},
		{text = "Feel the hand of death!"},
		{text = "You are on my deathlist!"},
}

monster.loot = {
	{id = 2513, chance = 1500},
	{id = 2404, chance = 4000},
	{id = 2148, chance = 80000, maxCount = 40},
	{id = 2148, chance = 15000, maxCount = 10},
	{id = 3969, chance = 200},
	{id = 2403, chance = 10000},
	{id = 3968, chance = 500},
	{id = 2510, chance = 2000},
	{id = 2145, chance = 200},
	{id = 2457, chance = 3000},
	{id = 2509, chance = 1000},
	{id = 2050, chance = 30000, maxCount = 2},
}

mType:register(monster)
