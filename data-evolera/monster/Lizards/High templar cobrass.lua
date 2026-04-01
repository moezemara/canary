local mType = Game.createMonsterType("lizard templar")
local monster = {}

monster.description = "a lizard templar"
monster.experience = 515
monster.outfit = {
	lookType = 113,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 810
monster.maxHealth = 810
monster.race = "blood"
monster.corpse = 4251
monster.speed = 220
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
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 44, attack = 40},
}

monster.defenses = {
	defense = 19,
	armor = 16,
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = 20},
		{type = COMBAT_ICEDAMAGE, percent = 20},
		{type = COMBAT_FIREDAMAGE, percent = -10},
}

monster.immunities = {
		{type = "earth", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Hissss!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 3975, chance = 18000},
	{id = 2463, chance = 12000},
	{id = 5876, chance = 50000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2457, chance = 3333},
			{id = 5881, chance = 50000},
		}
	},
}

mType:register(monster)
