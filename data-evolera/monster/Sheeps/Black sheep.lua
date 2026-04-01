local mType = Game.createMonsterType("black sheep")
local monster = {}

monster.description = "a black sheep"
monster.experience = 15
monster.outfit = {
	lookType = 13,
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
monster.corpse = 5994
monster.speed = 200
monster.manaCost = 250

monster.changeTarget = {
	interval = 2000,
	chance = 20,
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
	runHealth = 20,
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
		{text = "maeh"},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2666, chance = 100000, maxCount = 5},
}

mType:register(monster)
