local mType = Game.createMonsterType("bandit")
local monster = {}

monster.description = "a bandit"
monster.experience = 65
monster.outfit = {
	lookType = 129,
	lookHead = 58,
	lookBody = 59,
	lookLegs = 45,
	lookFeet = 114,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 245
monster.maxHealth = 245
monster.race = "blood"
monster.corpse = 6080
monster.speed = 180
monster.manaCost = 450

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
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 25,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 47, attack = 40},
}

monster.defenses = {
	defense = 15,
	armor = 11,
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Your money or your life!"},
		{text = "Hand me your purse!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 15},
	{id = 2388, chance = 6666},
	{id = 2386, chance = 5000},
	{id = 2484, chance = 20000},
	{id = 2530, chance = 6666},
	{id = 2649, chance = 10000},
	{id = 3976, chance = 50000, maxCount = 10},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2787, chance = 20000, maxCount = 2},
		}
	},
}

mType:register(monster)
