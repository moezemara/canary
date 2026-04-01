local mType = Game.createMonsterType("Hellfire Fighter")
local monster = {}

monster.description = "a Hellfire Fighter"
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
monster.health = 3800
monster.maxHealth = 3800
monster.race = "fire"
monster.corpse = 6324
monster.speed = 265
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
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 15, range = 7, radius = 4, target = 1, shootEffect = CONST_ANI_FIRE},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 13, length = 1, minDamage = -700, maxDamage = -1700, effect = CONST_ME_FIREATTACK},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 12, length = 7, spread = 3, minDamage = -200, maxDamage = -250},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 12, radius = 3, target = 0, minDamage = -200, maxDamage = -270, effect = CONST_ME_FIREAREA},
}

monster.defenses = {
	defense = 35,
	armor = 35,
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 75},
		{type = COMBAT_ENERGYDAMAGE, percent = 25},
		{type = COMBAT_ICEDAMAGE, percent = -15},
		{type = COMBAT_DEATHDAMAGE, percent = 20},
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
