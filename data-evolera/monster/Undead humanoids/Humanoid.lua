local mType = Game.createMonsterType("Humanoid")
local monster = {}

monster.description = "a humanoid"
monster.experience = 450000
monster.outfit = {
	lookType = 323,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 410000
monster.maxHealth = 410000
monster.race = "undead"
monster.corpse = 6080
monster.speed = 370
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 10,
}

monster.strategiesTarget = {
	nearest = 80,
	defense = 20,
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
	staticAttackChance = 85,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 135, attack = 135},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 2000, chance = 15, range = 7, target = 1, minDamage = 0, maxDamage = -9000, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 15, length = 7, spread = 0, minDamage = 0, maxDamage = -8000, effect = CONST_ME_REDSPARK},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 14, radius = 4, target = 0, minDamage = 0, maxDamage = -7905, effect = CONST_ME_REDSPARK},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 3000, chance = 19, length = 7, spread = 3, minDamage = 0, maxDamage = -9000, effect = CONST_ME_EXPLOSIONAREA},
}

monster.defenses = {
	defense = 30,
	armor = 30,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 25, minDamage = 100, maxDamage = 195},
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = -10},
		{type = COMBAT_EARTHDAMAGE, percent = 20},
		{type = COMBAT_ICEDAMAGE, percent = 10},
		{type = COMBAT_HOLYDAMAGE, percent = -20},
		{type = COMBAT_DEATHDAMAGE, percent = 60},
		{type = COMBAT_FIREDAMAGE, percent = -20},
}

monster.immunities = {
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Death!", yell = true},
		{text = "Come a little closer!", yell = true},
		{text = "The end is near!", yell = true},
}

monster.loot = {
	{id = 2148, chance = 40000, maxCount = 98},
	{id = 2152, chance = 20000, maxCount = 4},
	{id = 8865, chance = 10000, maxCount = 3},
	{id = 8932, chance = 13500},
	{id = 6500, chance = 6800},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 8889, chance = 1100},
			{id = 7418, chance = 1200},
			{id = 8910, chance = 5000},
		}
	},
}

mType:register(monster)
