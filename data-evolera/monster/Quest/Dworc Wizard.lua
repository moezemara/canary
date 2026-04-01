local mType = Game.createMonsterType("Dworc Wizard")
local monster = {}

monster.description = "a dworc wizard"
monster.experience = 50
monster.outfit = {
	lookType = 214,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 15000000
monster.maxHealth = 15000000
monster.race = "blood"
monster.corpse = 6055
monster.speed = 340
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
	convinceable = true,
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 15,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 22, attack = 13},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 6, range = 1, minDamage = -1000000, maxDamage = -1100000},
		{name = "speed", interval = 1000, chance = 8, range = 7, speedchange = -600, duration = 4000},
		{name = "drunk", interval = 1000, chance = 10, range = 7},
		{name = "outfit", interval = 1000, chance = 9, range = 7, duration = 5000},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 10, radius = 6, target = 0, minDamage = -6000000, maxDamage = -10000000},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 13, range = 7, radius = 1, target = 1},
}

monster.defenses = {
	defense = 8,
	armor = 3,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 10, minDamage = 3000000, maxDamage = 4000000},
		{name = "speed", interval = 1000, chance = 8, speedchange = 200, duration = 4000},
		{name = "invisible", interval = 1000, chance = 5, duration = 3000},
}

monster.immunities = {
		{type = "poison", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "grak brrretz!"},
		{text = "grow truk grrrrr."},
		{text = "prek tars, dekklep zurk."},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 12},
	{id = 2666, chance = 40000, maxCount = 2},
	{id = 2512, chance = 10000},
	{id = 2530, chance = 4000},
	{id = 3973, chance = 100},
	{id = 3976, chance = 50000, maxCount = 10},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 3967, chance = 50},
			{id = 3955, chance = 80},
			{id = 2385, chance = 6666},
			{id = 2464, chance = 5000},
			{id = 2420, chance = 5000},
			{id = 2448, chance = 5000},
			{id = 2007, chance = 20000},
		}
	},
}

mType:register(monster)
