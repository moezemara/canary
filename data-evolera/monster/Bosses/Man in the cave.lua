local mType = Game.createMonsterType("Man in the Cave")
local monster = {}

monster.description = "man in the cave"
monster.experience = 555
monster.outfit = {
	lookType = 128,
	lookHead = 95,
	lookBody = 116,
	lookLegs = 95,
	lookFeet = 114,
	lookAddons = 2,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 485
monster.maxHealth = 485
monster.race = "blood"
monster.corpse = 6080
monster.speed = 210
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
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 60, attack = 30},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 20, range = 7, minDamage = -10, maxDamage = -95, shootEffect = CONST_ANI_SMALLSTONE},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 100, range = 1, minDamage = -20, maxDamage = -30, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 10,
	armor = 14,
}

monster.immunities = {
		{type = "fire", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "Monk", chance = 20, interval = 2000, max = 1},
}

monster.voices = {
	interval = 2000,
	chance = 5,
		{text = "THE MONKS ARE MINE", yell = true},
		{text = "I will rope you up! All of you!"},
		{text = "You have been roped up!"},
		{text = "A MIC to rule them all!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 27},
	{id = 2120, chance = 20000},
	{id = 2120, chance = 6666},
	{id = 2120, chance = 3333},
	{id = 2691, chance = 4000},
	{id = 5913, chance = 2000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 7290, chance = 4000},
			{id = 7463, chance = 6666},
			{id = 7386, chance = 6666},
			{id = 7458, chance = 1000},
			{id = 2173, chance = 500},
		}
	},
}

mType:register(monster)
