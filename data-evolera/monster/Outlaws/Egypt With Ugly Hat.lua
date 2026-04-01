local mType = Game.createMonsterType("Egypt With Ugly Hat")
local monster = {}

monster.description = "a Vukis Mom"
monster.experience = 60
monster.outfit = {
	lookType = 146,
	lookHead = 100,
	lookBody = 20,
	lookLegs = 22,
	lookFeet = 2,
	lookAddons = 3,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 500000000
monster.maxHealth = 500000000
monster.race = "blood"
monster.corpse = 6080
monster.speed = 715
monster.manaCost = 420

monster.changeTarget = {
	interval = 5000,
	chance = 8,
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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 18,
}

monster.attacks = {
		{name = "melee", interval = 200, skill = 30, attack = 7100000},
}

monster.defenses = {
	defense = 13,
	armor = 10,
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "We are swift as the wind of the desert"},
		{text = "We are the true sons of the desert!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 2465, chance = 10000},
	{id = 2461, chance = 10000},
	{id = 2649, chance = 10000},
	{id = 2671, chance = 20000, maxCount = 2},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2544, chance = 10000, maxCount = 15},
			{id = 2147, chance = 3333, maxCount = 2},
			{id = 2675, chance = 6666, maxCount = 4},
			{id = 2690, chance = 6666, maxCount = 4},
			{id = 2050, chance = 20000},
			{id = 2478, chance = 3333},
			{id = 2652, chance = 2222},
			{id = 2201, chance = 2500},
		}
	},
}

mType:register(monster)
