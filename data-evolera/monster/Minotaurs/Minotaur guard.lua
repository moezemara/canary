local mType = Game.createMonsterType("minotaur guard")
local monster = {}

monster.description = "a minotaur guard"
monster.experience = 160
monster.outfit = {
	lookType = 29,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 185
monster.maxHealth = 185
monster.race = "blood"
monster.corpse = 5983
monster.speed = 190
monster.manaCost = 550

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
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 50, attack = 35},
}

monster.defenses = {
	defense = 25,
	armor = 15,
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Kirll Karrrl!"},
		{text = "Kaplar!"},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 2666, chance = 70000, maxCount = 3},
	{id = 2387, chance = 5000},
	{id = 2649, chance = 10000},
	{id = 5878, chance = 5000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2386, chance = 6666},
			{id = 2580, chance = 5000},
			{id = 2648, chance = 5000},
			{id = 2458, chance = 10000},
			{id = 2465, chance = 2500},
			{id = 2513, chance = 10000},
		}
	},
}

mType:register(monster)
