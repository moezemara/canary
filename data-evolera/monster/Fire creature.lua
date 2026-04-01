local mType = Game.createMonsterType("Fire Creature")
local monster = {}

monster.description = "a Fire Creature"
monster.experience = 13700
monster.outfit = {
	lookType = 242,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 14550
monster.maxHealth = 14550
monster.race = "blood"
monster.corpse = 6324
monster.speed = 150
monster.manaCost = 0

monster.changeTarget = {
	interval = 60000,
	chance = 0,
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
	staticAttackChance = 50,
	targetDistance = 1,
	runHealth = 210,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -300, maxDamage = -1600},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 6000, chance = 80, minDamage = -854, maxDamage = -1400},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 6000, chance = 80, minDamage = -350, maxDamage = -670},
}

monster.defenses = {
	defense = 34,
	armor = 32,
		{name = "light healing", interval = 6000, chance = 70, minDamage = 30, maxDamage = 80},
}

monster.immunities = {
		{type = "fire", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 2000,
	chance = 5,
		{text = "Fchu?"},
}

monster.loot = {
	{id = 7891, chance = 1333},
	{id = 7891, chance = 1333},
	{id = 7899, chance = 1333},
	{id = 7890, chance = 1333},
	{id = 7900, chance = 1333},
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2672, chance = 20000, maxCount = 2},
	{id = 2033, chance = 1818},
	{id = 1976, chance = 3333},
	{id = 2497, chance = 3000},
	{id = 7620, chance = 10000},
	{id = 2413, chance = 5000},
	{id = 2796, chance = 6666},
	{
		id = 2004, chance = 50000,
		childs = {
			{id = 2148, chance = 100000, maxCount = 100},
			{id = 2149, chance = 893, maxCount = 2},
			{id = 2146, chance = 3222, maxCount = 2},
			{id = 6087, chance = 3333},
			{id = 6088, chance = 2000},
			{id = 6089, chance = 1000},
		}
	},
}

mType:register(monster)
