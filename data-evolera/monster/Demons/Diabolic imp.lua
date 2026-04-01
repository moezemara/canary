local mType = Game.createMonsterType("Diabolic Imp")
local monster = {}

monster.description = "a Diabolic Imp"
monster.experience = 2900
monster.outfit = {
	lookType = 237,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1950
monster.maxHealth = 1950
monster.race = "blood"
monster.corpse = 6364
monster.speed = 250
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
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 70, attack = 80},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 8, range = 7, radius = 4, target = 1, minDamage = -50, maxDamage = -350, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 16, range = 7, radius = 2, target = 1, minDamage = -90, maxDamage = -500, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
}

monster.defenses = {
	defense = 15,
	armor = 15,
		{name = "combat", type = COMBAT_HEALING, interval = 2000, chance = 22, minDamage = 175, maxDamage = 245},
		{name = "speed", interval = 2000, chance = 18, speedchange = 520, duration = 4000},
		{name = "invisible", interval = 3000, chance = 18, duration = 4000},
}

monster.elements = {
		{type = COMBAT_EARTHDAMAGE, percent = 10},
		{type = COMBAT_ICEDAMAGE, percent = -20},
		{type = COMBAT_HOLYDAMAGE, percent = -15},
		{type = COMBAT_DEATHDAMAGE, percent = 10},
}

monster.immunities = {
		{type = "fire", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Muahaha!"},
		{text = "He he he!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 95},
	{id = 2148, chance = 100000, maxCount = 90},
	{id = 2152, chance = 35000, maxCount = 7},
	{id = 2050, chance = 15000},
	{id = 6558, chance = 11000},
	{id = 6558, chance = 13000},
	{id = 2260, chance = 18000},
	{id = 6300, chance = 9700},
	{id = 2465, chance = 6577},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2548, chance = 25000},
			{id = 6558, chance = 6666},
			{id = 2465, chance = 6577},
			{id = 2185, chance = 3500},
			{id = 2464, chance = 7887},
			{id = 5944, chance = 5666},
			{id = 7899, chance = 1500},
			{id = 7900, chance = 3900},
			{id = 6500, chance = 7777},
			{id = 2150, chance = 9999, maxCount = 3},
			{id = 2165, chance = 4555},
		}
	},
}

mType:register(monster)
