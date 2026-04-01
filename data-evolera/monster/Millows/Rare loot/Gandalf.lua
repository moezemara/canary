local mType = Game.createMonsterType("Gandalf")
local monster = {}

monster.description = "the Gandalf"
monster.experience = 12000
monster.outfit = {
	lookType = 229,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 820750000
monster.maxHealth = 820750000
monster.race = "venom"
monster.corpse = 6078
monster.speed = 320
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
	targetDistance = 0,
	runHealth = 2500,
}

monster.attacks = {
		{name = "melee", interval = 1000, minDamage = -1, maxDamage = -1},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 1000, chance = 80, range = 5, minDamage = -4000000, maxDamage = -5000000, effect = CONST_ME_SMALLCLOUDS},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 2000, chance = 20, range = 7, minDamage = -1000000, maxDamage = -3000000, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 3000, chance = 20, radius = 6, target = 0, minDamage = -4000000, maxDamage = -5000000, effect = CONST_ME_POISON},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 2000, chance = 18, radius = 6, target = 0, minDamage = -4000000, maxDamage = -5000000, effect = CONST_ME_ENERGY},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 2000, chance = 16, radius = 6, target = 0, minDamage = -1000000, maxDamage = -3000000, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 21, radius = 6, target = 0, minDamage = -4000000, maxDamage = -5000000, effect = CONST_ME_POFF},
		{name = "effect", interval = 3000, chance = 20, radius = 5, target = 0, minDamage = -4000000, maxDamage = -5000000, effect = CONST_ME_BLACKSPARK},
		--{name = "firecondition", interval = 3000, chance = 20, range = 7, radius = 7, target = 1, minDamage = -4000000, maxDamage = -5000000, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 25, length = 8, spread = 0, minDamage = -4000000, maxDamage = -5000000, effect = CONST_ME_GREENSPARK},
}

monster.defenses = {
	defense = 120,
	armor = 100,
		{name = "combat", type = COMBAT_HEALING, interval = 2000, chance = 10, minDamage = 25000000, maxDamage = 30000000},
		{name = "speed", interval = 3000, chance = 30, speedchange = 360, duration = 7000},
		{name = "invisible", interval = 4000, chance = 20, duration = 5000},
}

monster.summons = {
		{name = "Wizardino", chance = 100, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 20,
		{text = "NOONE WILL STOP ME THIS TIME!", yell = true},
		{text = "THE POWER IS MINE!", yell = true},
}

monster.loot = {
	{id = 2157, chance = 30000, maxCount = 12},
	{id = 8854, chance = 7},
	{id = 6529, chance = 7},
	{id = 8925, chance = 7},
	{id = 6107, chance = 7},
	{id = 2187, chance = 7},
	{id = 2494, chance = 16},
	{id = 8867, chance = 16},
	{id = 2493, chance = 16},
}

mType:register(monster)
