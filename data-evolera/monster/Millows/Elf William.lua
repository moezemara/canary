local mType = Game.createMonsterType("Elf William")
local monster = {}

monster.description = "a elf william"
monster.experience = 42
monster.outfit = {
	lookType = 62,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 570000000
monster.maxHealth = 570000000
monster.race = "blood"
monster.corpse = 6003
monster.speed = 500
monster.manaCost = 500

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
	convinceable = false,
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 1000, minDamage = -3600000, maxDamage = -4300000},
}

monster.defenses = {
	defense = 12,
	armor = 6,
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Ulathil beia Thratha!"},
		{text = "Bahaha aka!"},
		{text = "You are not welcome here."},
		{text = "Flee as long as you can."},
		{text = "Death to the defilers!"},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
}

mType:register(monster)
