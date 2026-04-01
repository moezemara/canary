local mType = Game.createMonsterType("beholder")
local monster = {}

monster.description = "a beholder"
monster.experience = 170
monster.outfit = {
	lookType = 17,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 260
monster.maxHealth = 260
monster.race = "venom"
monster.corpse = 5992
monster.speed = 150
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
		{name = "melee", interval = 2000, skill = 35, attack = 12},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1000, chance = 7, range = 7, minDamage = -15, maxDamage = -45, shootEffect = CONST_ANI_ENERGY},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 7, range = 7, minDamage = -25, maxDamage = -45, shootEffect = CONST_ANI_FIRE},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 8, range = 7, minDamage = -30, maxDamage = -50, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 8, range = 7, minDamage = -5, maxDamage = -45, shootEffect = CONST_ANI_POISON},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 3000, chance = 6, range = 7, minDamage = -35, maxDamage = -45, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 1000, chance = 5, range = 7, minDamage = -5, maxDamage = -25, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 10,
	armor = 15,
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = 20},
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
		{name = "skeleton", chance = 12, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Eye for eye!"},
		{text = "Here's looking at you!"},
		{text = "Let me take a look at you!"},
		{text = "You've got the look!"},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 52},
	{id = 2175, chance = 4000},
	{id = 2181, chance = 1333},
	{id = 2509, chance = 3333},
	{id = 2377, chance = 2000},
	{id = 3972, chance = 100},
	{
		id = 1987, chance = 90000,
		childs = {
			{id = 2512, chance = 3000},
			{id = 2394, chance = 5000},
			{id = 2148, chance = 100000, maxCount = 12},
			{id = 2518, chance = 1000},
			{id = 2397, chance = 6666},
			{id = 5898, chance = 556},
		}
	},
}

mType:register(monster)
