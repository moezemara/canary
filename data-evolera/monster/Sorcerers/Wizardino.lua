local mType = Game.createMonsterType("Wizardino")
local monster = {}

monster.description = "an wizardino"
monster.experience = 127500000000
monster.outfit = {
	lookType = 130,
	lookHead = 78,
	lookBody = 76,
	lookLegs = 94,
	lookFeet = 115,
	lookAddons = 2,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 70093750
monster.maxHealth = 70093750
monster.race = "blood"
monster.corpse = 6080
monster.speed = 760
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 30,
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
	canPushCreatures = true,
	staticAttackChance = 95,
	targetDistance = 0,
	runHealth = 1150,
}

monster.attacks = {
		{name = "melee", interval = 200, skill = 150, attack = 300000},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 20, range = 1, target = 1, minDamage = -2000000, maxDamage = -2300000, effect = CONST_ME_FIREATTACK, shootEffect = CONST_ANI_FIRE},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 20, range = 1, radius = 3, target = 1, shootEffect = CONST_ANI_FIRE},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 40, length = 1, spread = 0, minDamage = -2000000, maxDamage = -2300000, effect = CONST_ME_FIREATTACK},
}

monster.defenses = {
	defense = 25,
	armor = 25,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 15, minDamage = 60, maxDamage = 230},
		{name = "invisible", interval = 20000, chance = 1, duration = 1000},
}

monster.elements = {
		{type = COMBAT_EARTHDAMAGE, percent = 10},
		{type = COMBAT_PHYSICALDAMAGE, percent = -2},
		{type = COMBAT_ICEDAMAGE, percent = -5},
		{type = COMBAT_HOLYDAMAGE, percent = 3},
		{type = COMBAT_DEATHDAMAGE, percent = 3},
}

monster.immunities = {
		{type = "energy", condition = true},
		{type = "fire", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "fire elemental", chance = 1, interval = 90000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Nothing will remain but your scorched bones!"},
		{text = "Some like it hot!"},
		{text = "It's cooking time!"},
		{text = "Feel the heat of battle!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 70},
	{id = 2148, chance = 100000, maxCount = 44},
	{id = 8840, chance = 100000, maxCount = 5},
	{id = 9971, chance = 3500},
	{id = 7590, chance = 13500},
	{id = 7591, chance = 12500},
	{id = 7891, chance = 1500},
	{id = 2195, chance = 800},
	{id = 5904, chance = 2200},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 7760, chance = 9500},
			{id = 9980, chance = 1300},
			{id = 2167, chance = 14500},
			{id = 2114, chance = 1100},
			{id = 9969, chance = 400},
			{id = 2436, chance = 5000},
		}
	},
}

mType:register(monster)
