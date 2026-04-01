local mType = Game.createMonsterType("undead dragon")
local monster = {}

monster.description = "a undead dragon"
monster.experience = 7200
monster.outfit = {
	lookType = 231,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 8350
monster.maxHealth = 8350
monster.race = "undead"
monster.corpse = 6306
monster.speed = 300
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
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 95, attack = 95},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 20, range = 7, radius = 4, target = 1, minDamage = -300, maxDamage = -395, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_REDSPARK},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 3000, chance = 20, range = 7, minDamage = -0, maxDamage = -600, shootEffect = CONST_ANI_SUDDENDEATH},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 20, range = 7, radius = 4, target = 1, minDamage = -120, maxDamage = -390, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISON},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 10, range = 7, minDamage = -50, maxDamage = -180, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISON},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 4000, chance = 25, length = 8, spread = 3, minDamage = -500, maxDamage = -600, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 23, length = 8, spread = 3, minDamage = -200, maxDamage = -685, effect = CONST_ME_POISON},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 3000, chance = 25, length = 8, spread = 3, minDamage = -300, maxDamage = -600, effect = CONST_ME_GREENSHIMMER},
}

monster.defenses = {
	defense = 30,
	armor = 35,
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 10},
		{type = COMBAT_ICEDAMAGE, percent = 10},
		{type = COMBAT_HOLYDAMAGE, percent = -10},
}

monster.immunities = {
		{type = "death", condition = true},
		{type = "earth", condition = true},
		{type = "fire", condition = true},
		{type = "drown", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "FEEEED MY ETERNAL HUNGER!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2152, chance = 49000, maxCount = 5},
	{id = 2236, chance = 6667},
	{id = 2413, chance = 4000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 6500, chance = 1818},
			{id = 5944, chance = 1538},
			{id = 2547, chance = 4000, maxCount = 15},
			{id = 2466, chance = 2888},
			{id = 2454, chance = 2400},
			{id = 2476, chance = 5400},
			{id = 8910, chance = 4444},
		}
	},
}

mType:register(monster)
