local mType = Game.createMonsterType("lion")
local monster = {}

monster.description = "a lion"
monster.experience = 30
monster.outfit = {
	lookType = 41,
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
monster.corpse = 5986
monster.speed = 180
monster.manaCost = 320

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
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 10,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 32, attack = 20},
}

monster.defenses = {
	defense = 13,
	armor = 6,
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Grrrrh"},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2671, chance = 80000, maxCount = 3},
}

mType:register(monster)
