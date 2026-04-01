local mType = Game.createMonsterType("war wolf")
local monster = {}

monster.description = "a war wolf"
monster.experience = 55
monster.outfit = {
	lookType = 3,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 140
monster.maxHealth = 140
monster.race = "blood"
monster.corpse = 6009
monster.speed = 200
monster.manaCost = 0

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
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 39, attack = 24},
}

monster.defenses = {
	defense = 16,
	armor = 10,
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Grrrrrrr"},
		{text = "Yoooohhuuuu!", yell = true},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2671, chance = 33333, maxCount = 5},
	{id = 5897, chance = 6666},
}

mType:register(monster)
