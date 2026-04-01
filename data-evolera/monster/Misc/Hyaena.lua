local mType = Game.createMonsterType("hyaena")
local monster = {}

monster.description = "a hyaena"
monster.experience = 20
monster.outfit = {
	lookType = 94,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 60
monster.maxHealth = 60
monster.race = "blood"
monster.corpse = 6026
monster.speed = 206
monster.manaCost = 275

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
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 30,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 18, attack = 11},
}

monster.defenses = {
	defense = 3,
	armor = 1,
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2666, chance = 90000, maxCount = 3},
}

mType:register(monster)
