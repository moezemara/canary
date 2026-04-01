local mType = Game.createMonsterType("centipede")
local monster = {}

monster.description = "a centipede"
monster.experience = 30
monster.outfit = {
	lookType = 124,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 70
monster.maxHealth = 70
monster.race = "venom"
monster.corpse = 6050
monster.speed = 195
monster.manaCost = 335

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
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 30, attack = 24},
}

monster.defenses = {
	defense = 3,
	armor = 4,
}

monster.immunities = {
		{type = "poison", condition = true},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 32},
	{id = 2480, chance = 3333},
	{id = 2530, chance = 2857},
	{id = 3976, chance = 50000, maxCount = 10},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2398, chance = 3333},
			{id = 2671, chance = 20000, maxCount = 2},
			{id = 2376, chance = 10000},
			{id = 2412, chance = 2222},
		}
	},
}

mType:register(monster)
