local mType = Game.createMonsterType("rat")
local monster = {}

monster.description = "a rat"
monster.experience = 0
monster.outfit = {
	lookType = 21,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 20
monster.maxHealth = 20
monster.race = "blood"
monster.corpse = 5964
monster.speed = 140
monster.manaCost = 200

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
	runHealth = 5,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 8, attack = 9},
}

monster.defenses = {
	defense = 5,
	armor = 7,
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 6},
	{id = 2148, chance = 80000, maxCount = 7},
	{id = 2696, chance = 20000},
}

mType:register(monster)
