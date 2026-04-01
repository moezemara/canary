local mType = Game.createMonsterType("pig")
local monster = {}

monster.description = "a pig"
monster.experience = 0
monster.outfit = {
	lookType = 60,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 150
monster.maxHealth = 150
monster.race = "blood"
monster.corpse = 6000
monster.speed = 114
monster.manaCost = 255

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
	hostile = false,
	convinceable = true,
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 25,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 10, attack = 0},
}

monster.defenses = {
	defense = 2,
	armor = 2,
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2671, chance = 100000, maxCount = 4},
}

mType:register(monster)
