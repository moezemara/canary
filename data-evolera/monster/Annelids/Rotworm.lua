local mType = Game.createMonsterType("rotworm")
local monster = {}

monster.description = "a rotworm"
monster.experience = 40
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
monster.health = 65
monster.maxHealth = 65
monster.race = "blood"
monster.corpse = 5967
monster.speed = 180
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
		{name = "melee", interval = 2000, skill = 12, attack = 12},
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
