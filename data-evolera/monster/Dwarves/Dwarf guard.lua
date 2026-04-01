local mType = Game.createMonsterType("dwarf guard")
local monster = {}

monster.description = "a dwarf guard"
monster.experience = 165
monster.outfit = {
	lookType = 70,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 245
monster.maxHealth = 245
monster.race = "blood"
monster.corpse = 6013
monster.speed = 200
monster.manaCost = 650

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
		{name = "melee", interval = 2000, skill = 65, attack = 70},
}

monster.defenses = {
	defense = 30,
	armor = 25,
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 25},
		{type = COMBAT_FIREDAMAGE, percent = -5},
		{type = COMBAT_EARTHDAMAGE, percent = 10},
		{type = COMBAT_DEATHDAMAGE, percent = -4},
}

monster.immunities = {
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Hail Durin!"},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 50},
	{id = 2483, chance = 20000},
	{id = 2417, chance = 33333},
	{id = 2387, chance = 25000},
	{id = 2787, chance = 33333, maxCount = 3},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 5880, chance = 2500, maxCount = 2},
			{id = 2148, chance = 90000, maxCount = 15},
			{id = 2459, chance = 10000},
			{id = 2513, chance = 6666},
			{id = 2150, chance = 4000, maxCount = 2},
			{id = 2378, chance = 5000},
			{id = 2169, chance = 2500},
		}
	},
}

mType:register(monster)
