local mType = Game.createMonsterType("lizard snakecharmer")
local monster = {}

monster.description = "a lizard snakecharmer"
monster.experience = 210
monster.outfit = {
	lookType = 115,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 325
monster.maxHealth = 325
monster.race = "blood"
monster.corpse = 6041
monster.speed = 200
monster.manaCost = 0

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
	convinceable = false,
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 15,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 28, attack = 18},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 12, range = 7, minDamage = -50, maxDamage = -90, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISON},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 13, range = 7, radius = 1, target = 1, minDamage = -50, maxDamage = -100, shootEffect = CONST_ANI_POISON, effect = CONST_ME_GREENBUBBLE},
}

monster.defenses = {
	defense = 15,
	armor = 17,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 34, minDamage = 50, maxDamage = 100},
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = 20},
		{type = COMBAT_ICEDAMAGE, percent = 20},
		{type = COMBAT_FIREDAMAGE, percent = -10},
		{type = COMBAT_PHYSICALDAMAGE, percent = -20},
}

monster.immunities = {
		{type = "poison", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "cobra", chance = 15, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "I ssssmell warm blood!"},
		{text = "Shhhhhhhh"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 70},
	{id = 2154, chance = 1955},
	{id = 2191, chance = 1300},
	{id = 2182, chance = 1333},
	{id = 5876, chance = 5000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2181, chance = 1333},
			{id = 2150, chance = 4000},
			{id = 2654, chance = 20000},
			{id = 5881, chance = 5000},
		}
	},
}

mType:register(monster)
