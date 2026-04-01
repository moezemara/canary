local mType = Game.createMonsterType("Undead Snaketamer")
local monster = {}

monster.description = "a undead snaketamer"
monster.experience = 0
monster.outfit = {
	lookType = 99,
	lookHead = 95,
	lookBody = 116,
	lookLegs = 119,
	lookFeet = 115,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 28500000
monster.maxHealth = 28500000
monster.race = "undead"
monster.corpse = 6028
monster.speed = 350
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
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 1, minDamage = -200000, maxDamage = -285000},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 3000, chance = 9, range = 1, minDamage = -500000, maxDamage = -600000, effect = CONST_ME_BLUESHIMMER},
		{name = "speed", interval = 2000, chance = 15, range = 7, speedchange = -800, duration = 30000, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 11, radius = 3, target = 0, minDamage = -170000, maxDamage = -290000, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 9, length = 8, spread = 0, minDamage = -100000, maxDamage = -200000, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 3000, chance = 9, length = 8, spread = 0, minDamage = -200000, maxDamage = -400000, effect = CONST_ME_GREENSPARK},
}

monster.defenses = {
	defense = 20,
	armor = 20,
		{name = "combat", type = COMBAT_HEALING, interval = 500, chance = 17, minDamage = 1200000, maxDamage = 2000000},
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = 80},
		{type = COMBAT_HOLYDAMAGE, percent = -20},
}

monster.immunities = {
		{type = "death", condition = true},
		{type = "earth", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "Tamed Snake", chance = 17, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Doomed be the living!"},
		{text = "You will endure agony beyond thy death!"},
		{text = "Death awaits all!"},
		{text = "Thy living flesh offends me!"},
		{text = "Death and Decay!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2171, chance = 1666},
	{id = 2656, chance = 709},
	{id = 2144, chance = 6666, maxCount = 6},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2143, chance = 4000, maxCount = 2},
			{id = 2237, chance = 10000},
			{id = 2148, chance = 80000},
		}
	},
}

mType:register(monster)
