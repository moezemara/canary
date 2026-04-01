local mType = Game.createMonsterType("Stig Heil")
local monster = {}

monster.description = "my fuhrer"
monster.experience = 4500
monster.outfit = {
	lookType = 133,
	lookHead = 113,
	lookBody = 120,
	lookLegs = 114,
	lookFeet = 132,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 160500000
monster.maxHealth = 160500000
monster.race = "undead"
monster.corpse = 6081
monster.speed = 570
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 10,
}

monster.strategiesTarget = {
	nearest = 80,
	defense = 20,
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
	staticAttackChance = 85,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 200, skill = 135, attack = 320000},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 200, chance = 15, range = 2, target = 1, minDamage = 400000, maxDamage = -600000, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 15, length = 7, spread = 0, minDamage = 0, maxDamage = -600, effect = CONST_ME_REDSPARK},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 14, radius = 4, target = 0, minDamage = 400000, maxDamage = -700000, effect = CONST_ME_REDSPARK},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 3000, chance = 19, length = 7, spread = 3, minDamage = 100000, maxDamage = -300000, effect = CONST_ME_EXPLOSIONAREA},
}

monster.defenses = {
	defense = 30,
	armor = 30,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 25, minDamage = 100, maxDamage = 195},
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = -10},
		{type = COMBAT_EARTHDAMAGE, percent = 20},
		{type = COMBAT_ICEDAMAGE, percent = 10},
		{type = COMBAT_HOLYDAMAGE, percent = -20},
		{type = COMBAT_DEATHDAMAGE, percent = 60},
		{type = COMBAT_FIREDAMAGE, percent = -20},
}

monster.immunities = {
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Death!", yell = true},
		{text = "Come a little closer!", yell = true},
		{text = "The end is near!", yell = true},
}

monster.loot = {
	{id = 2148, chance = 40000, maxCount = 98},
	{id = 2148, chance = 40000, maxCount = 100},
	{id = 2152, chance = 20000, maxCount = 4},
	{id = 2150, chance = 10000, maxCount = 3},
	{id = 6558, chance = 13500},
	{id = 6558, chance = 18500},
	{id = 6500, chance = 6800},
	{id = 6300, chance = 2300},
	{id = 5909, chance = 2800},
	{id = 2521, chance = 7500},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 5022, chance = 40000, maxCount = 4},
			{id = 8889, chance = 1100},
			{id = 7418, chance = 1200},
			{id = 7589, chance = 7500},
			{id = 8910, chance = 5000},
			{id = 8473, chance = 7777},
		}
	},
}

mType:register(monster)
