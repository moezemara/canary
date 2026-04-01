local mType = Game.createMonsterType("Troll Champion")
local monster = {}

monster.description = "a troll champion"
monster.experience = 30
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
monster.health = 75
monster.maxHealth = 75
monster.race = "blood"
monster.corpse = 7926
monster.speed = 120
monster.manaCost = 340

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
		{name = "melee", interval = 2000, skill = 25, attack = 15},
}

monster.defenses = {
	defense = 8,
	armor = 8,
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = 22},
		{type = COMBAT_HOLYDAMAGE, percent = 11},
		{type = COMBAT_EARTHDAMAGE, percent = -3},
		{type = COMBAT_DEATHDAMAGE, percent = -4},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Meee maity!"},
		{text = "Grrrr"},
		{text = "Whaaaz up!?"},
		{text = "Gruntz!"},
}

monster.loot = {
	{id = 2148, chance = 6000, maxCount = 12},
	{id = 2380, chance = 1800},
	{id = 2643, chance = 1000},
	{id = 2461, chance = 1000},
	{id = 2666, chance = 1500},
	{id = 2120, chance = 8000},
	{id = 2389, chance = 2000},
	{id = 2448, chance = 5000},
	{id = 2512, chance = 1500},
}

mType:register(monster)
