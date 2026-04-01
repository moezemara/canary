local mType = Game.createMonsterType("hellhound")
local monster = {}

monster.description = "a hellhound"
monster.experience = 6800
monster.outfit = {
	lookType = 240,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 7500
monster.maxHealth = 7500
monster.race = "blood"
monster.corpse = 6332
monster.speed = 310
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
	staticAttackChance = 85,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 110, attack = 100},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 20, length = 8, spread = 3, minDamage = -200, maxDamage = -700, effect = CONST_ME_POISON},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 25, length = 8, spread = 3, minDamage = -200, maxDamage = -990, effect = CONST_ME_GREENSHIMMER},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 2000, chance = 25, range = 7, minDamage = -100, maxDamage = -480, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 3000, chance = 25, length = 8, spread = 3, minDamage = -250, maxDamage = -690, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 8, range = 7, minDamage = -150, maxDamage = -560, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISON},
}

monster.defenses = {
	defense = 35,
	armor = 35,
}

monster.elements = {
		{type = COMBAT_EARTHDAMAGE, percent = 40},
		{type = COMBAT_ICEDAMAGE, percent = -10},
		{type = COMBAT_HOLYDAMAGE, percent = -15},
		{type = COMBAT_ENERGYDAMAGE, percent = 25},
}

monster.immunities = {
		{type = "fire", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "GROOOWL!"},
		{text = "GRRRRR!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 5944, chance = 5555},
	{id = 2671, chance = 50000, maxCount = 5},
	{id = 2230, chance = 25000},
	{id = 6500, chance = 7200},
	{id = 2231, chance = 30000},
	{id = 2393, chance = 2000},
	{id = 2144, chance = 9999, maxCount = 3},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2430, chance = 2857},
			{id = 2383, chance = 2500},
			{id = 2410, chance = 15000, maxCount = 11},
			{id = 6558, chance = 8888, maxCount = 2},
			{id = 6553, chance = 1600},
		}
	},
}

mType:register(monster)
