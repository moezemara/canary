local mType = Game.createMonsterType("Meduzor")
local monster = {}

monster.description = "rebecka black"
monster.experience = 0
monster.outfit = {
	lookType = 330,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 25000000
monster.maxHealth = 25000000
monster.race = "blood"
monster.corpse = 10524
monster.speed = 680
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
	runHealth = 275,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 80, attack = 900000},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 10, length = 8, spread = 3, minDamage = -50000, maxDamage = -8000000, effect = CONST_ME_CARNIPHILA},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 15, range = 7, minDamage = -400000, maxDamage = -800000, shootEffect = CONST_ANI_EARTH},
		{name = "speed", interval = 1000, chance = 10, radius = 5, target = 0, speedchange = -700, duration = 12000, effect = CONST_ME_POFF},
		{name = "speed", interval = 1000, chance = 30, range = 7, speedchange = -700, duration = 12000, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 25,
	armor = 25,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 18, minDamage = 1900000, maxDamage = 2000000},
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = 20},
		{type = COMBAT_FIREDAMAGE, percent = -5},
		{type = COMBAT_ENERGYDAMAGE, percent = -10},
}

monster.immunities = {
		{type = "earth", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Friday friday friday friday friday friday friday"},
		{text = "timpa sucks"},
		{text = "your soul shall be mine"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2148, chance = 100000, maxCount = 50},
	{id = 2152, chance = 100000, maxCount = 2},
	{id = 2149, chance = 6500, maxCount = 3},
	{id = 2476, chance = 4600},
	{id = 1987, chance = 100000},
}

mType:register(monster)
