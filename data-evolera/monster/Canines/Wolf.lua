local mType = Game.createMonsterType("wolf")
local monster = {}

monster.description = "a wolf"
monster.experience = 18
monster.outfit = {
	lookType = 27,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 25
monster.maxHealth = 25
monster.race = "blood"
monster.corpse = 5968
monster.speed = 195
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
	hostile = true,
	convinceable = true,
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 8,
}

monster.attacks = {
		{name = "melee", interval = 1500, skill = 14, attack = 13},
}

monster.defenses = {
	defense = 8,
	armor = 8,
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = -5},
		{type = COMBAT_EARTHDAMAGE, percent = 3},
		{type = COMBAT_HOLYDAMAGE, percent = 7},
		{type = COMBAT_DEATHDAMAGE, percent = -4},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2666, chance = 90000, maxCount = 3},
	{id = 5897, chance = 6666},
}

mType:register(monster)
