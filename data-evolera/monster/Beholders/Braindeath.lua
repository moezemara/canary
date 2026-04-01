local mType = Game.createMonsterType("Braindeath")
local monster = {}

monster.description = "a braindeath"
monster.experience = 895
monster.outfit = {
	lookType = 256,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1225
monster.maxHealth = 1225
monster.race = "undead"
monster.corpse = 6037
monster.speed = 270
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8,
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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 5,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 60, attack = 55},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 2000, chance = 25, range = 7, minDamage = -45, maxDamage = -250, shootEffect = CONST_ANI_ENERGY},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 20, range = 7, minDamage = -60, maxDamage = -80, shootEffect = CONST_ANI_FIRE},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 20, range = 7, minDamage = -70, maxDamage = -290, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 25, range = 7, minDamage = -30, maxDamage = -70, shootEffect = CONST_ANI_POISON},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 15, range = 7, minDamage = -75, maxDamage = -85, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 2000, chance = 30, range = 7, minDamage = -20, maxDamage = -340, effect = CONST_ME_REDSHIMMER},
		{name = "speed", interval = 2000, chance = 10, range = 7, speedchange = -600, duration = 20000, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 26,
	armor = 13,
		{name = "combat", type = COMBAT_HEALING, interval = 2000, chance = 30, minDamage = 0, maxDamage = 1},
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = 13},
		{type = COMBAT_PHYSICALDAMAGE, percent = 9},
		{type = COMBAT_HOLYDAMAGE, percent = -10},
		{type = COMBAT_FIREDAMAGE, percent = -10},
}

monster.immunities = {
		{type = "earth", condition = true},
		{type = "death", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "Vampire", chance = 10, interval = 2000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "You have disturbed my thoughts!"},
		{text = "Let me turn you into something more useful!"},
		{text = "Let me taste your brain!"},
		{text = "You will be punished!"},
}

monster.loot = {
	{id = 2509, chance = 6000},
	{id = 2148, chance = 100000, maxCount = 45},
	{id = 2445, chance = 400},
	{id = 2397, chance = 12000},
	{id = 2518, chance = 300},
	{id = 2181, chance = 1333},
	{id = 3972, chance = 600},
	{id = 2451, chance = 300},
	{id = 5898, chance = 1700},
	{
		id = 1987, chance = 80000,
		childs = {
			{id = 2377, chance = 6000},
			{id = 2175, chance = 1000},
			{id = 2394, chance = 10000},
			{id = 2148, chance = 80000, maxCount = 32},
			{id = 2148, chance = 80000, maxCount = 90},
			{id = 2423, chance = 5000},
			{id = 2391, chance = 1333},
		}
	},
}

mType:register(monster)
