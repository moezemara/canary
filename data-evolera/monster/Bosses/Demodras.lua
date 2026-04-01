local mType = Game.createMonsterType("Demodras")
local monster = {}

monster.description = "demodras"
monster.experience = 4000
monster.outfit = {
	lookType = 204,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 4500
monster.maxHealth = 4500
monster.race = "blood"
monster.corpse = 5984
monster.speed = 230
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
	targetDistance = 1,
	runHealth = 300,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -160, maxDamage = -600},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 3000, chance = 20, range = 7, radius = 4, target = 1, minDamage = -250, maxDamage = -350, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 10, range = 7, radius = 6, target = 1, shootEffect = CONST_ANI_FIRE},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 4000, chance = 20, length = 8, spread = 3, minDamage = -250, maxDamage = -550, effect = CONST_ME_FIREAREA},
}

monster.defenses = {
	defense = 25,
	armor = 35,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 25, minDamage = 400, maxDamage = 700},
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = 100},
		{type = COMBAT_EARTHDAMAGE, percent = 100},
}

monster.immunities = {
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "Dragon", chance = 17, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "I WILL SET THE WORLD IN FIRE!", yell = true},
		{text = "I WILL PROTECT MY BROOD!", yell = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2672, chance = 20000, maxCount = 2},
	{id = 2033, chance = 1818},
	{id = 1976, chance = 3333},
	{id = 2413, chance = 5000},
	{id = 2498, chance = 588},
	{id = 2492, chance = 333},
	{id = 2547, chance = 2222, maxCount = 10},
	{id = 2796, chance = 6666},
	{id = 3976, chance = 50000, maxCount = 10},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2148, chance = 100000, maxCount = 100},
			{id = 2149, chance = 833, maxCount = 2},
			{id = 2392, chance = 1428},
			{id = 2146, chance = 2222, maxCount = 2},
			{id = 2528, chance = 1333},
			{id = 5948, chance = 5000},
			{id = 5882, chance = 5000},
			{id = 5919, chance = 100000},
		}
	},
}

mType:register(monster)
