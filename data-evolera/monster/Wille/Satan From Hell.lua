local mType = Game.createMonsterType("Satan From Hell")
local monster = {}

monster.description = "a satan from hell"
monster.experience = 2200
monster.outfit = {
	lookType = 243,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 410000000
monster.maxHealth = 410000000
monster.race = "fire"
monster.corpse = 6324
monster.speed = 965
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 10,
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
		{name = "melee", interval = 2000, skill = 86, attack = 96},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 50, range = 7, radius = 4, target = 1, shootEffect = CONST_ANI_FIRE},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 7, length = 1, minDamage = -10000000, maxDamage = -25000000, effect = CONST_ME_FIREATTACK},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 100, chance = 20, length = 7, spread = 3, minDamage = -10000000, maxDamage = -12000000},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 100, chance = 20, radius = 3, target = 0, minDamage = -10000000, maxDamage = -12000000, effect = CONST_ME_FIREAREA},
}

monster.defenses = {
	defense = 35,
	armor = 35,
}

monster.elements = {
		{type = COMBAT_DEATHDAMAGE, percent = -30},
}

monster.immunities = {
		{type = "fire", condition = true},
		{type = "poison", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Fire!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2147, chance = 8888, maxCount = 4},
	{id = 5944, chance = 2222},
	{id = 2239, chance = 20000},
	{id = 2136, chance = 1111},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2260, chance = 13500},
			{id = 2432, chance = 1333},
			{id = 7899, chance = 1200},
			{id = 7894, chance = 1500},
			{id = 2145, chance = 15000},
			{id = 2376, chance = 12500},
			{id = 2392, chance = 3550},
		}
	},
}

mType:register(monster)
