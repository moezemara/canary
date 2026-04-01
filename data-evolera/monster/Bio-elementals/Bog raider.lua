local mType = Game.createMonsterType("Bog Raider")
local monster = {}

monster.description = "a bog raider"
monster.experience = 800
monster.outfit = {
	lookType = 299,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1300
monster.maxHealth = 1300
monster.race = "venom"
monster.corpse = 8951
monster.speed = 300
monster.manaCost = 0

monster.changeTarget = {
	interval = 60000,
	chance = 0,
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
	canPushCreatures = false,
	staticAttackChance = 83,
	targetDistance = 1,
	runHealth = 1,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 60, attack = 65},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 17, target = 1, minDamage = -90, maxDamage = -140, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 12, radius = 3, target = 0, minDamage = -100, maxDamage = -175, effect = CONST_ME_STONES},
		{name = "speed", interval = 3000, chance = 20, target = 1, speedchange = -600, duration = 4000, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 15,
	armor = 10,
		{name = "haste", interval = 10000, chance = 40},
		{name = "combat", type = COMBAT_HEALING, interval = 5000, chance = 60, minDamage = 50, maxDamage = 80},
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = -10},
		{type = COMBAT_ENERGYDAMAGE, percent = -10},
		{type = COMBAT_EARTHDAMAGE, percent = 25},
		{type = COMBAT_ICEDAMAGE, percent = -10},
		{type = COMBAT_HOLYDAMAGE, percent = -10},
		{type = COMBAT_DEATHDAMAGE, percent = 20},
		{type = COMBAT_FIREDAMAGE, percent = 80},
}

monster.immunities = {
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 2000,
	chance = 5,
		{text = "Tchhh!"},
		{text = "Slurp!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 121},
	{id = 8473, chance = 3100},
	{id = 8472, chance = 2900},
	{id = 8872, chance = 1800},
	{id = 8912, chance = 2100},
	{id = 8873, chance = 1400},
	{id = 8891, chance = 1300},
}

mType:register(monster)
