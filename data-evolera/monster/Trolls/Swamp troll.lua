local mType = Game.createMonsterType("swamp troll")
local monster = {}

monster.description = "a swamp troll"
monster.experience = 65
monster.outfit = {
	lookType = 76,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 55
monster.maxHealth = 55
monster.race = "venom"
monster.corpse = 6018
monster.speed = 128
monster.manaCost = 320

monster.changeTarget = {
	interval = 5000,
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
		{name = "melee", interval = 2000, skill = 20, attack = 12},
}

monster.defenses = {
	defense = 10,
	armor = 6,
}

monster.elements = {
		{type = COMBAT_EARTHDAMAGE, percent = 8},
		{type = COMBAT_FIREDAMAGE, percent = -8},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Grrrr"},
		{text = "Groar!"},
		{text = "Me strong! Me ate spinach!"},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 12},
	{id = 2667, chance = 90000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2643, chance = 20000},
			{id = 2050, chance = 20000},
			{id = 2580, chance = 20000},
		}
	},
}

mType:register(monster)
