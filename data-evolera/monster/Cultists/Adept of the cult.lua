local mType = Game.createMonsterType("adept of the cult")
local monster = {}

monster.description = "an adept of the cult"
monster.experience = 400
monster.outfit = {
	lookType = 194,
	lookHead = 114,
	lookBody = 94,
	lookLegs = 94,
	lookFeet = 57,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 430
monster.maxHealth = 430
monster.race = "blood"
monster.corpse = 6080
monster.speed = 210
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
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 40, attack = 40},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 34, radius = 1, target = 0, minDamage = -50, maxDamage = -250, effect = CONST_ME_POISON},
		{name = "drunk", interval = 1000, chance = 15, range = 7, radius = 1, target = 1, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 20,
	armor = 20,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 25, minDamage = 50, maxDamage = 70},
		{name = "invisible", interval = 3000, chance = 15, duration = 4000},
}

monster.immunities = {
		{type = "fire", condition = true},
		{type = "poison", condition = true},
}

monster.summons = {
		{name = "Ghoul", chance = 10000, interval = 2000, max = 1},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 47},
	{id = 2147, chance = 4000, maxCount = 2},
	{id = 2169, chance = 1000},
	{id = 2169, chance = 2222},
	{id = 2423, chance = 3333},
	{id = 2655, chance = 1428},
	{id = 7451, chance = 828},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 5810, chance = 555},
			{id = 7426, chance = 933},
			{id = 6087, chance = 1428},
			{id = 5801, chance = 909},
		}
	},
}

mType:register(monster)
