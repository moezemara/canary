local mType = Game.createMonsterType("bear")
local monster = {}

monster.description = "a bear"
monster.experience = 23
monster.outfit = {
	lookType = 16,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 80
monster.maxHealth = 80
monster.race = "blood"
monster.corpse = 5975
monster.speed = 176
monster.manaCost = 300

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
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 15,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 15, attack = 17},
}

monster.defenses = {
	defense = 6,
	armor = 6,
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = -8},
		{type = COMBAT_EARTHDAMAGE, percent = 20},
		{type = COMBAT_DEATHDAMAGE, percent = -10},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "grrrr"},
		{text = "groar"},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2671, chance = 90000, maxCount = 4},
	{id = 5902, chance = 5000},
	{id = 5896, chance = 5000},
}

mType:register(monster)
