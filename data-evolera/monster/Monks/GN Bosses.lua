local mType = Game.createMonsterType("GN Bosses")
local monster = {}

monster.description = "a gn boss"
monster.experience = 145
monster.outfit = {
	lookType = 225,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1200
monster.maxHealth = 1200
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
	attackable = false,
	hostile = true,
	convinceable = true,
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
		{name = "melee", interval = 2000, skill = 50, attack = 57},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 12, range = 1, minDamage = -55, maxDamage = -100, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 23,
	armor = 22,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 12, minDamage = 25, maxDamage = 49},
		{name = "speed", interval = 1000, chance = 10, speedchange = 300, duration = 6000},
}

monster.immunities = {
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "This is where your path will end!"},
		{text = "Your end has come."},
		{text = "You are no match for us!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 2439, chance = 400},
	{id = 1949, chance = 10000},
	{id = 2467, chance = 10000},
	{id = 2642, chance = 6666},
	{id = 3976, chance = 50000, maxCount = 10},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2177, chance = 1000},
			{id = 2044, chance = 6666},
			{id = 2689, chance = 20000, maxCount = 3},
			{id = 2440, chance = 100},
			{id = 1949, chance = 20000},
		}
	},
}

mType:register(monster)
