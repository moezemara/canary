local mType = Game.createMonsterType("Ron the Ripper")
local monster = {}

monster.description = "Ron the Ripper"
monster.experience = 500
monster.outfit = {
	lookType = 151,
	lookHead = 95,
	lookBody = 94,
	lookLegs = 117,
	lookFeet = 97,
	lookAddons = 1,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1500
monster.maxHealth = 1500
monster.race = "blood"
monster.corpse = 6080
monster.speed = 240
monster.manaCost = 0

monster.changeTarget = {
	interval = 60000,
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
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 50,
	targetDistance = 1,
	runHealth = 250,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -200, maxDamage = -250},
}

monster.defenses = {
	defense = 50,
	armor = 35,
}

monster.loot = {
	{id = 6101, chance = 100000},
	{id = 2148, chance = 100000, maxCount = 50},
	{id = 2476, chance = 1200},
	{id = 2387, chance = 1500},
	{id = 2463, chance = 4000},
	{id = 2379, chance = 8500},
	{id = 2320, chance = 100000, maxCount = 2},
}

mType:register(monster)
