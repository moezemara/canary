local mType = Game.createMonsterType("Retarded Shambler")
local monster = {}

monster.description = "a ghoul"
monster.experience = 85
monster.outfit = {
	lookType = 100,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 225000000
monster.maxHealth = 225000000
monster.race = "blood"
monster.corpse = 6029
monster.speed = 700
monster.manaCost = 450

monster.changeTarget = {
	interval = 2000,
	chance = 0,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 20, skill = 125, attack = 390000},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 11, range = 1, minDamage = -200000, maxDamage = -300000},
}

monster.defenses = {
	defense = 17,
	armor = 8,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 13, minDamage = 9, maxDamage = 15},
}

monster.elements = {
		{type = COMBAT_EARTHDAMAGE, percent = 20},
		{type = COMBAT_HOLYDAMAGE, percent = -25},
		{type = COMBAT_ICEDAMAGE, percent = 10},
		{type = COMBAT_ENERGYDAMAGE, percent = 30},
}

monster.immunities = {
		{type = "death", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 64},
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 30},
	{id = 2050, chance = 20000},
	{id = 2483, chance = 10000},
	{id = 2473, chance = 6666},
	{id = 2398, chance = 20000},
	{id = 5913, chance = 5000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2460, chance = 6666},
			{id = 2229, chance = 20000, maxCount = 2},
			{id = 2403, chance = 10000},
			{id = 2168, chance = 2500},
		}
	},
}

mType:register(monster)
