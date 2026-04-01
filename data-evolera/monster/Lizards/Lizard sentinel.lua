local mType = Game.createMonsterType("lizard sentinel")
local monster = {}

monster.description = "a lizard sentinel"
monster.experience = 110
monster.outfit = {
	lookType = 114,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 265
monster.maxHealth = 265
monster.race = "blood"
monster.corpse = 6040
monster.speed = 240
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
	convinceable = true,
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 10,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 35, attack = 26},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 7, range = 7, minDamage = -40, maxDamage = -70, shootEffect = CONST_ANI_SPEAR},
}

monster.defenses = {
	defense = 20,
	armor = 20,
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = 10},
		{type = COMBAT_ICEDAMAGE, percent = 20},
		{type = COMBAT_FIREDAMAGE, percent = -10},
}

monster.immunities = {
		{type = "earth", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Tssss!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 60},
	{id = 2182, chance = 1950},
	{id = 2425, chance = 1428},
	{id = 2381, chance = 6666},
	{id = 2457, chance = 6666},
	{id = 3974, chance = 1466},
	{id = 3965, chance = 1150},
	{id = 5876, chance = 5000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2148, chance = 100000, maxCount = 50},
			{id = 2147, chance = 4000, maxCount = 4},
			{id = 2654, chance = 20000},
			{id = 5881, chance = 5000},
		}
	},
}

mType:register(monster)
