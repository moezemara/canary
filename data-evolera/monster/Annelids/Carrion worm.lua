local mType = Game.createMonsterType("carrion worm")
local monster = {}

monster.description = "a carrion worm"
monster.experience = 70
monster.outfit = {
	lookType = 192,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 145
monster.maxHealth = 145
monster.race = "blood"
monster.corpse = 6069
monster.speed = 190
monster.manaCost = 280

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
		{name = "melee", interval = 2000, skill = 15, attack = 15},
}

monster.defenses = {
	defense = 13,
	armor = 13,
}

monster.elements = {
		{type = COMBAT_EARTHDAMAGE, percent = 20},
		{type = COMBAT_FIREDAMAGE, percent = -5},
		{type = COMBAT_ICEDAMAGE, percent = -5},
		{type = COMBAT_ENERGYDAMAGE, percent = 5},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 49},
	{id = 3976, chance = 20000, maxCount = 5},
	{id = 2530, chance = 2000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2398, chance = 3333},
			{id = 2671, chance = 20000, maxCount = 2},
			{id = 2376, chance = 10000},
			{id = 2463, chance = 1200},
		}
	},
}

mType:register(monster)
