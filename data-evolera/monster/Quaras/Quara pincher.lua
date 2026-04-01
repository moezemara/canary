local mType = Game.createMonsterType("quara pincher")
local monster = {}

monster.description = "a quara pincher"
monster.experience = 1200
monster.outfit = {
	lookType = 77,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1800
monster.maxHealth = 1800
monster.race = "blood"
monster.corpse = 6063
monster.speed = 240
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
		{name = "melee", interval = 1000, skill = 85, attack = 60},
		{name = "speed", interval = 1000, chance = 12, range = 7, speedchange = -850, duration = 4000, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 40,
	armor = 35,
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = -10},
		{type = COMBAT_PHYSICALDAMAGE, percent = 10},
}

monster.immunities = {
		{type = "fire", condition = true},
		{type = "poison", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Clank clank!"},
		{text = "Clap!"},
}

monster.loot = {
	{id = 2670, chance = 20000, maxCount = 5},
	{id = 5895, chance = 2000},
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2475, chance = 1333},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2398, chance = 5000},
			{id = 2381, chance = 2222},
			{id = 2487, chance = 500},
			{id = 2147, chance = 1538, maxCount = 3},
		}
	},
}

mType:register(monster)
