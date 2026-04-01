local mType = Game.createMonsterType("Forest Dragon")
local monster = {}

monster.description = "a forest dragon"
monster.experience = 1100
monster.outfit = {
	lookType = 34,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1200
monster.maxHealth = 1200
monster.race = "blood"
monster.corpse = 2844
monster.speed = 235
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 5,
}

monster.strategiesTarget = {
	nearest = 70,
	defense = 10,
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
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 300,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 60, attack = 45},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 15, range = 7, radius = 4, target = 1, minDamage = -85, maxDamage = -155, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 12, length = 8, spread = 3, minDamage = -150, maxDamage = -210, effect = CONST_ME_FIREAREA},
}

monster.defenses = {
	defense = 38,
	armor = 25,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 13, minDamage = 54, maxDamage = 76},
}

monster.immunities = {
		{type = "fire", condition = true},
		{type = "poison", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "GROOAAARRR", yell = true},
		{text = "FCHHHHH", yell = true},
}

monster.loot = {
	{id = 2413, chance = 2000},
	{id = 2455, chance = 10000},
	{id = 2387, chance = 1000},
	{id = 2672, chance = 45000, maxCount = 3},
	{id = 2434, chance = 500},
	{id = 2516, chance = 300},
	{id = 2148, chance = 80000, maxCount = 45},
	{id = 2148, chance = 50000, maxCount = 60},
	{id = 2177, chance = 100},
	{id = 2397, chance = 4000},
	{id = 2398, chance = 20000},
	{id = 2647, chance = 2000},
	{id = 2409, chance = 500},
	{id = 2406, chance = 25000},
	{id = 2145, chance = 400},
	{id = 2457, chance = 3000},
	{id = 2509, chance = 15000},
}

mType:register(monster)
