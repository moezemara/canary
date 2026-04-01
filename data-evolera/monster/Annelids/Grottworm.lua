local mType = Game.createMonsterType("Grottworm")
local monster = {}

monster.description = "a grottworm"
monster.experience = 800000000
monster.outfit = {
	lookType = 26,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 50500000
monster.maxHealth = 50500000
monster.race = "blood"
monster.corpse = 5967
monster.speed = 580
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
	illusionable = false,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 200, skill = 120, attack = 320000},
}

monster.defenses = {
	defense = 11,
	armor = 8,
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 27},
	{id = 2480, chance = 1500},
	{id = 2530, chance = 2857},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2666, chance = 20000},
			{id = 3976, chance = 50000, maxCount = 5},
			{id = 2398, chance = 3333},
			{id = 2671, chance = 20000, maxCount = 2},
			{id = 2376, chance = 10000},
			{id = 2412, chance = 1000},
		}
	},
}

mType:register(monster)
