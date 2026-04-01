local mType = Game.createMonsterType("Cyclops Drone")
local monster = {}

monster.description = "a cyclops drone"
monster.experience = 200
monster.outfit = {
	lookType = 280,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 325
monster.maxHealth = 325
monster.race = "blood"
monster.corpse = 7848
monster.speed = 190
monster.manaCost = 490

monster.changeTarget = {
	interval = 60000,
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
	staticAttackChance = 60,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 55, attack = 55},
		{name = "strength", interval = 1000, chance = 13, target = 1, minDamage = 0, maxDamage = -85},
}

monster.defenses = {
	defense = 25,
	armor = 25,
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = 10},
		{type = COMBAT_ENERGYDAMAGE, percent = 20},
		{type = COMBAT_HOLYDAMAGE, percent = 8},
		{type = COMBAT_EARTHDAMAGE, percent = -10},
		{type = COMBAT_DEATHDAMAGE, percent = -5},
}

monster.voices = {
	interval = 2000,
	chance = 5,
		{text = "Fee! Fie! Foe! Fum!"},
		{text = "Luttl pest!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 24},
	{id = 2513, chance = 33333},
	{id = 2406, chance = 1818},
	{id = 2381, chance = 2000},
	{id = 7588, chance = 2857},
	{id = 2129, chance = 6666},
	{id = 2666, chance = 33333, maxCount = 2},
}

mType:register(monster)
