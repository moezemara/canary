local mType = Game.createMonsterType("chicken")
local monster = {}

monster.description = "a chicken"
monster.experience = 0
monster.outfit = {
	lookType = 111,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 15
monster.maxHealth = 15
monster.race = "blood"
monster.corpse = 6042
monster.speed = 200
monster.manaCost = 220

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
	hostile = false,
	convinceable = true,
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 15,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 0, attack = 0},
}

monster.defenses = {
	defense = 2,
	armor = 1,
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "gokgoooook"},
		{text = "cluck cluck"},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2695, chance = 20000, maxCount = 4},
	{id = 3976, chance = 50000, maxCount = 18},
	{id = 5890, chance = 5000},
}

mType:register(monster)
