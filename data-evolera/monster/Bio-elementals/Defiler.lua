local mType = Game.createMonsterType("defiler")
local monster = {}

monster.description = "a defiler"
monster.experience = 3700
monster.outfit = {
	lookType = 238,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 3650
monster.maxHealth = 3650
monster.race = "venom"
monster.corpse = 6532
monster.speed = 245
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
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 70, attack = 70},
		{name = "speed", interval = 3000, chance = 20, length = 8, spread = 3, speedchange = -700, duration = 10000, effect = CONST_ME_SMALLPLANTS},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 12, radius = 7, target = 0, minDamage = -400, maxDamage = -500, effect = CONST_ME_GREENSPARK},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 20, range = 7, minDamage = -160, maxDamage = -270, shootEffect = CONST_ANI_EARTH},
}

monster.defenses = {
	defense = 15,
	armor = 15,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 50, minDamage = 75, maxDamage = 225},
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = 15},
		{type = COMBAT_ICEDAMAGE, percent = 10},
		{type = COMBAT_FIREDAMAGE, percent = -15},
}

monster.immunities = {
		{type = "earth", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Blubb"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 80},
	{id = 2148, chance = 100000, maxCount = 90},
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2152, chance = 28000, maxCount = 3},
	{id = 6500, chance = 4500},
	{id = 5944, chance = 6500},
	{id = 2147, chance = 8500, maxCount = 2},
	{id = 2149, chance = 6500, maxCount = 3},
}

mType:register(monster)
