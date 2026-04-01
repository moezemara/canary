local mType = Game.createMonsterType("crocodile")
local monster = {}

monster.description = "a crocodile"
monster.experience = 40
monster.outfit = {
	lookType = 119,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 105
monster.maxHealth = 105
monster.race = "blood"
monster.corpse = 6046
monster.speed = 220
monster.manaCost = 350

monster.changeTarget = {
	interval = 5000,
	chance = 8,
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
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 10,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 21, attack = 32},
}

monster.defenses = {
	defense = 5,
	armor = 13,
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 5},
		{type = COMBAT_ENERGYDAMAGE, percent = -5},
		{type = COMBAT_EARTHDAMAGE, percent = 20},
		{type = COMBAT_ICEDAMAGE, percent = 10},
		{type = COMBAT_FIREDAMAGE, percent = -10},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 3982, chance = 4000},
	{id = 3982, chance = 1333},
	{id = 3983, chance = 1000},
	{id = 3976, chance = 50000, maxCount = 10},
}

mType:register(monster)
