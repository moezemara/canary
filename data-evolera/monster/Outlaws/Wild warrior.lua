local mType = Game.createMonsterType("wild warrior")
local monster = {}

monster.description = "a wild warrior"
monster.experience = 55
monster.outfit = {
	lookType = 131,
	lookHead = 57,
	lookBody = 57,
	lookLegs = 57,
	lookFeet = 57,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 120
monster.maxHealth = 120
monster.race = "blood"
monster.corpse = 6080
monster.speed = 215
monster.manaCost = 420

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
	runHealth = 10,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 46, attack = 16},
}

monster.defenses = {
	defense = 18,
	armor = 9,
		{name = "speed", interval = 1000, chance = 6, speedchange = 200, duration = 2000},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "An enemy!"},
		{text = "Gimme your money!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 30},
	{id = 2511, chance = 10000},
	{id = 2465, chance = 3333},
	{id = 2509, chance = 6666},
	{id = 2391, chance = 100},
	{id = 2530, chance = 5000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2398, chance = 10000},
			{id = 2666, chance = 20000, maxCount = 2},
			{id = 2649, chance = 20000},
			{id = 2391, chance = 909},
			{id = 2110, chance = 2000},
			{id = 2459, chance = 2500},
		}
	},
}

mType:register(monster)
