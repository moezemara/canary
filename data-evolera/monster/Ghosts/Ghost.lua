local mType = Game.createMonsterType("ghost")
local monster = {}

monster.description = "a ghost"
monster.experience = 120
monster.outfit = {
	lookType = 48,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 150
monster.maxHealth = 150
monster.race = "undead"
monster.corpse = 5993
monster.speed = 160
monster.manaCost = 100

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
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 40, attack = 35},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 15, range = 1, minDamage = -25, maxDamage = -45},
}

monster.defenses = {
	defense = 10,
	armor = 10,
}

monster.immunities = {
		{type = "physical", condition = true},
		{type = "earth", condition = true},
		{type = "death", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Huh!"},
		{text = "Shhhhhh"},
		{text = "Buuuuuh"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 15},
	{id = 2642, chance = 10000},
	{id = 2404, chance = 10000},
	{id = 5909, chance = 5000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2394, chance = 6666},
			{id = 2804, chance = 20000, maxCount = 2},
			{id = 2532, chance = 1666},
			{id = 2182, chance = 1333},
			{id = 2165, chance = 1538},
			{id = 2423, chance = 10000},
			{id = 1962, chance = 5000},
		}
	},
}

mType:register(monster)
