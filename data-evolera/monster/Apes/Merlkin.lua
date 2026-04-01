local mType = Game.createMonsterType("merlkin")
local monster = {}

monster.description = "a merlkin"
monster.experience = 145
monster.outfit = {
	lookType = 117,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 230
monster.maxHealth = 230
monster.race = "blood"
monster.corpse = 6044
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
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 25, attack = 20},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 15, range = 7, minDamage = -60, maxDamage = -90, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 3000, chance = 34, range = 7, minDamage = -15, maxDamage = -45, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGY},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 13, range = 7, radius = 1, target = 1, shootEffect = CONST_ANI_ENERGY},
}

monster.defenses = {
	defense = 10,
	armor = 16,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 10, minDamage = 10, maxDamage = 40},
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = 20},
		{type = COMBAT_ENERGYDAMAGE, percent = 10},
		{type = COMBAT_HOLYDAMAGE, percent = 10},
		{type = COMBAT_ICEDAMAGE, percent = -15},
		{type = COMBAT_DEATHDAMAGE, percent = -5},
}

monster.immunities = {
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Ugh! Ugh! Ugh!"},
		{text = "Holy banana!"},
		{text = "Chakka! Chakka!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 62},
	{id = 2150, chance = 1538},
	{id = 2675, chance = 10000, maxCount = 5},
	{id = 5883, chance = 1000},
	{id = 2676, chance = 8000},
	{
		id = 1987, chance = 50000,
		childs = {
			{id = 3966, chance = 2333},
			{id = 2188, chance = 3038},
			{id = 2162, chance = 6222},
		}
	},
}

mType:register(monster)
