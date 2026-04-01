local mType = Game.createMonsterType("Dworc Warrior")
local monster = {}

monster.description = "a dworc warrior"
monster.experience = 35
monster.outfit = {
	lookType = 215,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 900000000
monster.maxHealth = 900000000
monster.race = "blood"
monster.corpse = 6058
monster.speed = 740
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
	targetDistance = 1,
	runHealth = 8,
}

monster.attacks = {
		{name = "melee", interval = 200, skill = 125, attack = 1100000},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 9, range = 1, minDamage = -100000, maxDamage = -150000, shootEffect = CONST_ANI_THROWINGKNIFE},
}

monster.defenses = {
	defense = 8,
	armor = 3,
}

monster.immunities = {
		{type = "poison", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Grak brrretz!"},
		{text = "Grow truk grrrrr."},
		{text = "Prek tars, dekklep zurk."},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 12},
	{id = 2666, chance = 40000, maxCount = 2},
	{id = 2512, chance = 10000},
	{id = 2530, chance = 4000},
	{id = 3956, chance = 10000, maxCount = 3},
	{id = 3976, chance = 50000, maxCount = 10},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 3952, chance = 500},
			{id = 2385, chance = 6666},
			{id = 2464, chance = 5000},
			{id = 2420, chance = 5000},
			{id = 2448, chance = 5000},
			{id = 2007, chance = 20000},
		}
	},
}

mType:register(monster)
