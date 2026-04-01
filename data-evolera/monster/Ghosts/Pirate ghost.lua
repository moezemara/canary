local mType = Game.createMonsterType("pirate ghost")
local monster = {}

monster.description = "a pirate ghost"
monster.experience = 250
monster.outfit = {
	lookType = 196,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 275
monster.maxHealth = 275
monster.race = "undead"
monster.corpse = 6071
monster.speed = 230
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
	pushable = true,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -0, maxDamage = -95},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 34, radius = 1, target = 0, minDamage = -30, maxDamage = -78, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 20, range = 7, radius = 2, target = 1, minDamage = -1, maxDamage = -65, effect = CONST_ME_REDNOTE},
}

monster.defenses = {
	defense = 25,
	armor = 20,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 15, minDamage = 40, maxDamage = 70},
}

monster.immunities = {
		{type = "physical", condition = true},
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
		{text = "Yooh Ho Hooh Ho!"},
		{text = "Hell is waiting for You!"},
}

monster.loot = {
	{id = 2148, chance = 52000, maxCount = 45},
	{id = 2655, chance = 666},
	{id = 2237, chance = 6666},
	{id = 2236, chance = 4000},
	{id = 2165, chance = 666},
	{id = 2383, chance = 800},
	{id = 1951, chance = 1000},
	{id = 5917, chance = 916},
}

mType:register(monster)
