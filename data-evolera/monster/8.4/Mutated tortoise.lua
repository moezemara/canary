local mType = Game.createMonsterType("Mutated Tortoise")
local monster = {}

monster.description = "a mutated tortoise"
monster.experience = 700000
monster.outfit = {
	lookType = 197,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 32000
monster.maxHealth = 32000
monster.race = "blood"
monster.corpse = 6072
monster.speed = 200
monster.manaCost = 445

monster.changeTarget = {
	interval = 5000,
	chance = 0,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = true,
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
		{name = "melee", interval = 2000, skill = 84, attack = 200},
}

monster.defenses = {
	defense = 15,
	armor = 15,
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 10},
		{type = COMBAT_EARTHDAMAGE, percent = 15},
		{type = COMBAT_ICEDAMAGE, percent = 10},
		{type = COMBAT_FIREDAMAGE, percent = -10},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 80},
	{id = 2148, chance = 15000, maxCount = 30},
	{id = 5899, chance = 15000},
	{id = 5678, chance = 14000, maxCount = 3},
	{id = 6131, chance = 909},
	{id = 2671, chance = 20000, maxCount = 2},
	{id = 2417, chance = 6666},
	{id = 2510, chance = 10000},
}

mType:register(monster)
