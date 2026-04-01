local mType = Game.createMonsterType("Fernfang")
local monster = {}

monster.description = "Fernfang"
monster.experience = 400
monster.outfit = {
	lookType = 206,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 400
monster.maxHealth = 400
monster.race = "blood"
monster.corpse = 6080
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
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 50, attack = 40},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 1000, chance = 25, range = 7, minDamage = -25, maxDamage = -45, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1000, chance = 13, range = 7, minDamage = -70, maxDamage = -90, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGY},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 10, range = 7, minDamage = -140, maxDamage = -180, shootEffect = CONST_ANI_SUDDENDEATH},
}

monster.defenses = {
	defense = 10,
	armor = 15,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 15, minDamage = 90, maxDamage = 120},
		{name = "speed", interval = 1000, chance = 7, speedchange = 310, duration = 10000},
		{name = "effect", interval = 1000, chance = 5},
		{name = "outfit", interval = 1000, chance = 5, duration = 14000},
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = 70},
		{type = COMBAT_EARTHDAMAGE, percent = 40},
}

monster.immunities = {
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "War Wolf", chance = 13, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "You desecrated this place!"},
		{text = "I will cleanse this isle!"},
		{text = "Grrrrrrr"},
		{text = "Yoooohhuuuu!", yell = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 1949, chance = 10000},
	{id = 2467, chance = 10000},
	{id = 2642, chance = 6666},
	{id = 3976, chance = 50000, maxCount = 10},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2044, chance = 6666},
			{id = 2689, chance = 20000, maxCount = 3},
			{id = 2166, chance = 1428},
		}
	},
}

mType:register(monster)
