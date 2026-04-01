local mType = Game.createMonsterType("dwarf soldier")
local monster = {}

monster.description = "a dwarf soldier"
monster.experience = 70
monster.outfit = {
	lookType = 71,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 135
monster.maxHealth = 135
monster.race = "blood"
monster.corpse = 6014
monster.speed = 170
monster.manaCost = 360

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
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 40, attack = 36},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 3000, chance = 13, range = 7, minDamage = -20, maxDamage = -40, shootEffect = CONST_ANI_BOLT},
}

monster.defenses = {
	defense = 20,
	armor = 9,
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = -5},
		{type = COMBAT_EARTHDAMAGE, percent = 10},
		{type = COMBAT_DEATHDAMAGE, percent = -4},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Hail Durin!"},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 15},
	{id = 2543, chance = 20000, maxCount = 10},
	{id = 2481, chance = 10000},
	{id = 2455, chance = 10000},
	{id = 2554, chance = 3333},
	{id = 2464, chance = 20000},
	{id = 2643, chance = 25000},
	{id = 2696, chance = 15000},
	{id = 5880, chance = 2500, maxCount = 2},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2525, chance = 1666},
			{id = 2378, chance = 3333},
			{id = 2213, chance = 2500},
		}
	},
}

mType:register(monster)
