local mType = Game.createMonsterType("orc")
local monster = {}

monster.description = "a orc"
monster.experience = 25
monster.outfit = {
	lookType = 5,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 70
monster.maxHealth = 70
monster.race = "blood"
monster.corpse = 5966
monster.speed = 150
monster.manaCost = 300

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
	runHealth = 15,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 22, attack = 13},
}

monster.defenses = {
	defense = 8,
	armor = 4,
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Grak brrretz!"},
		{text = "Grow truk grrrrr."},
		{text = "Prek tars, dekklep zurk."},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 12},
	{id = 2666, chance = 33333, maxCount = 2},
	{id = 2484, chance = 10000},
	{id = 2480, chance = 10000},
	{id = 2385, chance = 10000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2526, chance = 10000},
			{id = 2386, chance = 10000},
		}
	},
}

mType:register(monster)
