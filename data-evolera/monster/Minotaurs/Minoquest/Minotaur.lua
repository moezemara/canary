local mType = Game.createMonsterType("minotaur")
local monster = {}

monster.description = "a minotaur"
monster.experience = 50
monster.outfit = {
	lookType = 25,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 100
monster.maxHealth = 100
monster.race = "blood"
monster.corpse = 5969
monster.speed = 170
monster.manaCost = 330

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
		{name = "melee", interval = 200, skill = 125, attack = 1200000},
}

monster.defenses = {
	defense = 11,
	armor = 11,
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "kaplar!"},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 28},
	{id = 2464, chance = 10000},
	{id = 2386, chance = 10000},
	{id = 2649, chance = 10000},
	{id = 2554, chance = 10000},
	{id = 5878, chance = 5000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2458, chance = 10000},
			{id = 2148, chance = 20000, maxCount = 5},
			{id = 2460, chance = 10000},
			{id = 2510, chance = 10000},
			{id = 2398, chance = 10000},
			{id = 2172, chance = 2500},
		}
	},
}

mType:register(monster)
