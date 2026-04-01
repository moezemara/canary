local mType = Game.createMonsterType("cave rat")
local monster = {}

monster.description = "a cave rat"
monster.experience = 10
monster.outfit = {
	lookType = 56,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 30
monster.maxHealth = 30
monster.race = "blood"
monster.corpse = 5964
monster.speed = 150
monster.manaCost = 250

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
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 3,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 11, attack = 12},
}

monster.defenses = {
	defense = 7,
	armor = 9,
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Meeeeep!"},
		{text = "Meep!"},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 6},
	{id = 2148, chance = 100000, maxCount = 12},
	{id = 2696, chance = 20000},
}

mType:register(monster)
