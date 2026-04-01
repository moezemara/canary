local mType = Game.createMonsterType("Xenia")
local monster = {}

monster.description = "Xenia"
monster.experience = 255
monster.outfit = {
	lookType = 139,
	lookHead = 113,
	lookBody = 57,
	lookLegs = 95,
	lookFeet = 113,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 290
monster.maxHealth = 290
monster.race = "blood"
monster.corpse = 6081
monster.speed = 220
monster.manaCost = 450

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
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 10,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 40, attack = 28},
		{name = "drunk", interval = 1000, chance = 12, length = 4, spread = 2, effect = CONST_ME_GREENNOTE},
}

monster.defenses = {
	defense = 20,
	armor = 20,
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = 10},
		{type = COMBAT_FIREDAMAGE, percent = 10},
		{type = COMBAT_HOLYDAMAGE, percent = 7},
		{type = COMBAT_DEATHDAMAGE, percent = -7},
		{type = COMBAT_PHYSICALDAMAGE, percent = -6},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Stand still!"},
		{text = "One more head for me!"},
		{text = "Head off!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 42},
	{id = 2420, chance = 25000},
	{id = 2463, chance = 29000},
}

mType:register(monster)
