local mType = Game.createMonsterType("Orcaruz Berz")
local monster = {}

monster.description = "a orcaruz berz"
monster.experience = 195
monster.outfit = {
	lookType = 8,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 48500000
monster.maxHealth = 48500000
monster.race = "blood"
monster.corpse = 5980
monster.speed = 750
monster.manaCost = 590

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
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 60, attack = 800000},
}

monster.defenses = {
	defense = 12,
	armor = 15,
		{name = "speed", interval = 1000, chance = 15, speedchange = 290, duration = 6000},
}

monster.immunities = {
		{type = "poison", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "KRAK ORRRRRRK!", yell = true},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 15},
	{id = 2666, chance = 33333, maxCount = 3},
	{id = 2381, chance = 6666},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2464, chance = 10000},
			{id = 2458, chance = 10000},
			{id = 2044, chance = 5000},
			{id = 2378, chance = 5000},
		}
	},
}

mType:register(monster)
