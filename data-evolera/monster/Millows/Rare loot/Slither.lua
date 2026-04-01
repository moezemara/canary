local mType = Game.createMonsterType("Slither")
local monster = {}

monster.description = "a slither"
monster.experience = 1950
monster.outfit = {
	lookType = 275,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 2017350000
monster.maxHealth = 2017350000
monster.race = "undead"
monster.corpse = 8307
monster.speed = 600
monster.manaCost = 0

monster.changeTarget = {
	interval = 20000,
	chance = 15,
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
	canPushCreatures = false,
	staticAttackChance = 85,
	targetDistance = 1,
	runHealth = 1,
}

monster.attacks = {
		{name = "melee", interval = 1000, minDamage = -10000000, maxDamage = -1200000},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 2000, chance = 50, radius = 2, target = 1, minDamage = -4500000, maxDamage = -5500000, effect = CONST_ME_ICEATTACK, shootEffect = CONST_ANI_SNOWBALL},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 1000, chance = 50, range = 7, target = 1, minDamage = -4500000, maxDamage = -5500000, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICETORNADO},
		{name = "speed", interval = 2000, chance = 50, length = 7, spread = 3, minDamage = -7000000, maxDamage = -8500000, effect = CONST_ME_ICEATTACK},
}

monster.defenses = {
	defense = 30,
	armor = 30,
		{name = "combat", type = COMBAT_HEALING, interval = 2000, chance = 15, minDamage = 25000000, maxDamage = 35000000},
}

monster.summons = {
		{name = "Ice Spider", chance = 100, interval = 1000, max = 1},
}

monster.loot = {
	{id = 2157, chance = 30000, maxCount = 16},
	{id = 12324, chance = 10},
	{id = 12325, chance = 10},
	{id = 12326, chance = 10},
	{id = 7902, chance = 16},
	{id = 7897, chance = 14},
	{id = 7896, chance = 15},
	{id = 7892, chance = 13},
	{id = 2183, chance = 6},
	{id = 1978, chance = 14},
	{id = 2186, chance = 6},
	{id = 7407, chance = 6},
	{id = 8907, chance = 14},
	{id = 5803, chance = 7},
	{id = 7839, chance = 7},
	{id = 8878, chance = 14},
	{id = 10529, chance = 10},
}

mType:register(monster)
