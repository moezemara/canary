local mType = Game.createMonsterType("Stone Gryphon")
local monster = {}

monster.description = "a stone gryphon"
monster.experience = 150
monster.outfit = {
	lookType = 95,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 500000000
monster.maxHealth = 500000000
monster.race = "undead"
monster.corpse = 6027
monster.speed = 150
monster.manaCost = 0

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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 30,
}

monster.attacks = {
		{name = "melee", interval = 1000, minDamage = -6750000, maxDamage = -8250000},
}

monster.defenses = {
	defense = 30,
	armor = 25,
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Harrrr Harrrr!"},
		{text = "Stone sweet stone."},
		{text = "Feel my claws, softskin."},
		{text = "Chhhhhrrrrk!"},
		{text = "There is a stone in your shoe!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 20},
}

mType:register(monster)
