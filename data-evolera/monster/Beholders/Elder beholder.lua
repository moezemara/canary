local mType = Game.createMonsterType("elder beholder")
local monster = {}

monster.description = "a elder beholder"
monster.experience = 280
monster.outfit = {
	lookType = 108,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1100
monster.maxHealth = 1100
monster.race = "blood"
monster.corpse = 6037
monster.speed = 270
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
		{name = "melee", interval = 2000, skill = 45, attack = 16},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1000, chance = 8, range = 7, minDamage = -45, maxDamage = -75, shootEffect = CONST_ANI_ENERGY},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 7, range = 7, minDamage = -60, maxDamage = -80, shootEffect = CONST_ANI_FIRE},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 6, range = 7, minDamage = -70, maxDamage = -90, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 8, range = 7, minDamage = -30, maxDamage = -70, shootEffect = CONST_ANI_POISON},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 6, range = 7, minDamage = -75, maxDamage = -85, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 6, range = 7, minDamage = -75, maxDamage = -85, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 1000, chance = 6, range = 7, minDamage = -20, maxDamage = -40, effect = CONST_ME_REDSHIMMER},
		{name = "speed", interval = 1000, chance = 10, range = 7, speedchange = -600, duration = 20000, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 23,
	armor = 13,
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = 10},
		{type = COMBAT_FIREDAMAGE, percent = -10},
}

monster.immunities = {
		{type = "poison", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "gazer", chance = 9, interval = 1000, max = 1},
		{name = "crypt shambler", chance = 10, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Let me take a look at you!"},
		{text = "Inferior creatures, bow before my power!"},
}

monster.loot = {
	{id = 2509, chance = 6000},
	{id = 2148, chance = 100000, maxCount = 45},
	{id = 2445, chance = 400},
	{id = 2397, chance = 12000},
	{id = 2518, chance = 300},
	{id = 2181, chance = 1333},
	{id = 3972, chance = 600},
	{id = 2451, chance = 300},
	{id = 5898, chance = 556},
	{
		id = 1987, chance = 80000,
		childs = {
			{id = 2377, chance = 6000},
			{id = 2175, chance = 1000},
			{id = 2394, chance = 10000},
			{id = 2148, chance = 80000, maxCount = 32},
			{id = 2148, chance = 80000, maxCount = 90},
			{id = 2423, chance = 5000},
			{id = 2391, chance = 1333},
		}
	},
}

mType:register(monster)
