local mType = Game.createMonsterType("necromancer")
local monster = {}

monster.description = "a necromancer"
monster.experience = 580
monster.outfit = {
	lookType = 9,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 580
monster.maxHealth = 580
monster.race = "blood"
monster.corpse = 6080
monster.speed = 200
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
	targetDistance = 4,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 30, attack = 40},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 1000, chance = 10, range = 1, minDamage = -10, maxDamage = -120, effect = CONST_ME_SMALLCLOUDS},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 3000, chance = 17, range = 7, minDamage = -35, maxDamage = -125, shootEffect = CONST_ANI_EARTH},
}

monster.defenses = {
	defense = 20,
	armor = 20,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 25, minDamage = 42, maxDamage = 68},
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = -5},
		{type = COMBAT_PHYSICALDAMAGE, percent = -5},
		{type = COMBAT_ICEDAMAGE, percent = 10},
		{type = COMBAT_ENERGYDAMAGE, percent = 20},
		{type = COMBAT_HOLYDAMAGE, percent = -5},
}

monster.immunities = {
		{type = "earth", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "ghoul", chance = 17, interval = 1000, max = 1},
		{name = "ghost", chance = 15, interval = 1000, max = 1},
		{name = "mummy", chance = 13, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Your corpse will be mine!"},
		{text = "Taste the sweetness of death!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 40},
	{id = 2032, chance = 10000},
	{id = 2804, chance = 20000, maxCount = 2},
	{id = 2182, chance = 1333},
	{id = 2406, chance = 15000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2412, chance = 10000},
			{id = 2483, chance = 10000},
			{id = 2796, chance = 1500},
			{id = 2229, chance = 20000, maxCount = 3},
			{id = 2747, chance = 20000},
			{id = 2436, chance = 833},
			{id = 2663, chance = 909},
			{id = 2195, chance = 666},
			{id = 2423, chance = 5000},
		}
	},
}

mType:register(monster)
