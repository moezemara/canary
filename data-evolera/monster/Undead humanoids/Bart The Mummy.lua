local mType = Game.createMonsterType("Bart The Mummy")
local monster = {}

monster.description = "a gay"
monster.experience = 150
monster.outfit = {
	lookType = 65,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 57000000
monster.maxHealth = 57000000
monster.race = "undead"
monster.corpse = 6004
monster.speed = 500
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
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 200, skill = 50, attack = 370000},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 100, chance = 15, range = 1, minDamage = -100000, maxDamage = -200000},
		{name = "speed", interval = 1000, chance = 8, range = 7, speedchange = -600, duration = 10000, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 20,
	armor = 14,
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = 20},
		{type = COMBAT_HOLYDAMAGE, percent = -25},
}

monster.immunities = {
		{type = "earth", condition = true},
		{type = "death", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 80},
	{id = 2161, chance = 3333},
	{id = 2162, chance = 1818},
	{id = 2134, chance = 6666},
	{id = 2411, chance = 2857},
	{id = 2529, chance = 2557},
	{id = 5914, chance = 5000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2529, chance = 1428},
			{id = 2144, chance = 5000, maxCount = 2},
			{id = 2124, chance = 2000},
			{id = 2169, chance = 1333},
			{id = 2170, chance = 2500},
		}
	},
}

mType:register(monster)
