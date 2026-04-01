local mType = Game.createMonsterType("Human")
local monster = {}

monster.description = "a human"
monster.experience = 50
monster.outfit = {
	lookType = 1,
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
monster.corpse = 0
monster.speed = 220
monster.manaCost = 350

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
	illusionable = false,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 20,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 10, attack = 7},
}

monster.defenses = {
	defense = 5,
	armor = 0,
}

monster.loot = {
	{id = 1988, chance = 50000},
	{id = 2689, chance = 50000, maxCount = 3},
	{id = 2696, chance = 30000},
	{id = 2148, chance = 60000, maxCount = 20},
	{id = 2467, chance = 60000},
	{id = 2461, chance = 10000},
	{id = 2666, chance = 40000, maxCount = 3},
	{id = 2376, chance = 80000},
}

mType:register(monster)
