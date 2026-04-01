local mType = Game.createMonsterType("Big Boss Trolliver")
local monster = {}

monster.description = "big boss trolliver"
monster.experience = 105
monster.outfit = {
	lookType = 281,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 150
monster.maxHealth = 150
monster.race = "blood"
monster.corpse = 7926
monster.speed = 140
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
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
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 20,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 35, attack = 40},
}

monster.defenses = {
	defense = 12,
	armor = 10,
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = 22},
		{type = COMBAT_HOLYDAMAGE, percent = 11},
		{type = COMBAT_EARTHDAMAGE, percent = -3},
		{type = COMBAT_DEATHDAMAGE, percent = -4},
}

monster.loot = {
	{id = 2148, chance = 6000, maxCount = 57},
	{id = 2666, chance = 1500, maxCount = 3},
	{id = 2389, chance = 2000, maxCount = 2},
	{id = 2448, chance = 5000},
}

mType:register(monster)
