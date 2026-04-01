local mType = Game.createMonsterType("winter wolf")
local monster = {}

monster.description = "a winter wolf"
monster.experience = 20
monster.outfit = {
	lookType = 52,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 30
monster.maxHealth = 30
monster.race = "blood"
monster.corpse = 5997
monster.speed = 200
monster.manaCost = 260

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
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 21, attack = 13},
}

monster.defenses = {
	defense = 6,
	armor = 2,
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = 5},
		{type = COMBAT_EARTHDAMAGE, percent = -3},
		{type = COMBAT_HOLYDAMAGE, percent = 7},
		{type = COMBAT_DEATHDAMAGE, percent = 4},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2666, chance = 33333, maxCount = 4},
}

mType:register(monster)
