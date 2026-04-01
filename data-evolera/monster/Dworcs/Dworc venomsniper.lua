local mType = Game.createMonsterType("dworc venomsniper")
local monster = {}

monster.description = "a dworc venomsniper"
monster.experience = 30
monster.outfit = {
	lookType = 216,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 80
monster.maxHealth = 80
monster.race = "blood"
monster.corpse = 6059
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
		{name = "melee", interval = 2000, skill = 20, attack = 10},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 25, range = 5, minDamage = -14, maxDamage = -26},
}

monster.defenses = {
	defense = 15,
	armor = 3,
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
	{id = 3983, chance = 200},
	{id = 3975, chance = 100},
	{id = 2512, chance = 10000},
	{id = 2530, chance = 4000},
	{id = 3976, chance = 50000, maxCount = 10},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2385, chance = 6666},
			{id = 2464, chance = 5000},
			{id = 2420, chance = 5000},
			{id = 2448, chance = 5000},
			{id = 2007, chance = 20000},
		}
	},
}

mType:register(monster)
