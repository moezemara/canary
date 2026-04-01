local mType = Game.createMonsterType("Super Witch")
local monster = {}

monster.description = "a witch"
monster.experience = 120
monster.outfit = {
	lookType = 54,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 450000000
monster.maxHealth = 450000000
monster.race = "blood"
monster.corpse = 6081
monster.speed = 1280
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
	targetDistance = 0,
	runHealth = 30,
}

monster.attacks = {
		{name = "melee", interval = 20, skill = 18, attack = 800000},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 20, range = 7, minDamage = -15000000, maxDamage = -22000000, shootEffect = CONST_ANI_FIRE},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 100, range = 7, radius = 1, target = 1, shootEffect = CONST_ANI_FIRE},
}

monster.defenses = {
	defense = 12,
	armor = 8,
}

monster.elements = {
		{type = COMBAT_DEATHDAMAGE, percent = -5},
		{type = COMBAT_PHYSICALDAMAGE, percent = -10},
}

monster.immunities = {
		{type = "energy", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Horax pokti!"},
		{text = "Hihihihi!"},
		{text = "Herba budinia ex!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 2129, chance = 10000},
	{id = 2185, chance = 833},
	{id = 2643, chance = 10000},
	{id = 2651, chance = 5000},
	{id = 2696, chance = 33333},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2405, chance = 5000},
			{id = 2442, chance = 1666},
			{id = 2324, chance = 10000},
			{id = 2654, chance = 3333},
			{id = 2418, chance = 1000},
			{id = 2199, chance = 1428},
			{id = 2801, chance = 1333},
		}
	},
}

mType:register(monster)
