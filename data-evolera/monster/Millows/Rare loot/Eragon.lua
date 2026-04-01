local mType = Game.createMonsterType("Eragon")
local monster = {}

monster.description = "a eragon"
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
monster.health = 1120750000
monster.maxHealth = 1120750000
monster.race = "undead"
monster.corpse = 6306
monster.speed = 500
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
	targetDistance = 0,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 1000, minDamage = -7000000, maxDamage = -8000000},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 100, range = 7, radius = 4, target = 1, minDamage = -4000000, maxDamage = -5000000, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_REDSPARK},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 3000, chance = 35, range = 7, minDamage = -4000000, maxDamage = -5000000, shootEffect = CONST_ANI_SUDDENDEATH},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 35, range = 7, radius = 4, target = 1, minDamage = -4000000, maxDamage = -5000000, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISON},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 25, range = 7, minDamage = -4000000, maxDamage = -5000000, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISON},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 4000, chance = 35, length = 8, spread = 3, minDamage = -4000000, maxDamage = -5000000, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 33, length = 8, spread = 3, minDamage = -4000000, maxDamage = -5000000, effect = CONST_ME_POISON},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 3000, chance = 35, length = 8, spread = 3, minDamage = -4000000, maxDamage = -5000000, effect = CONST_ME_GREENSHIMMER},
}

monster.defenses = {
	defense = 0,
	armor = 0,
}

monster.summons = {
		{name = "Xynex", chance = 100, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 20,
		{text = "NOONE WILL STOP ME THIS TIME!", yell = true},
		{text = "THE POWER IS MINE!", yell = true},
}

monster.loot = {
	{id = 2157, chance = 30000, maxCount = 14},
	{id = 8854, chance = 8},
	{id = 6529, chance = 8},
	{id = 8925, chance = 8},
	{id = 6107, chance = 8},
	{id = 2187, chance = 8},
	{id = 2495, chance = 18},
	{id = 9933, chance = 18},
	{id = 8902, chance = 18},
	{id = 2520, chance = 18},
}

mType:register(monster)
