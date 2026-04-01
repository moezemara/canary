local mType = Game.createMonsterType("tiger")
local monster = {}

monster.description = "a tiger"
monster.experience = 40
monster.outfit = {
	lookType = 125,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 75
monster.maxHealth = 75
monster.race = "blood"
monster.corpse = 6051
monster.speed = 240
monster.manaCost = 420

monster.changeTarget = {
	interval = 5000,
	chance = 8,
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
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 1500, skill = 42, attack = 15},
}

monster.defenses = {
	defense = 15,
	armor = 5,
		{name = "speed", interval = 1000, chance = 12, speedchange = 567, duration = 3000},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2671, chance = 33333, maxCount = 2},
	{id = 2666, chance = 33333, maxCount = 3},
}

mType:register(monster)
