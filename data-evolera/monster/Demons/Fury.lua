local mType = Game.createMonsterType("Fury")
local monster = {}

monster.description = "a fury"
monster.experience = 4500
monster.outfit = {
	lookType = 149,
	lookHead = 94,
	lookBody = 77,
	lookLegs = 96,
	lookFeet = 0,
	lookAddons = 3,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 4100
monster.maxHealth = 4100
monster.race = "blood"
monster.corpse = 6081
monster.speed = 410
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
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 90, attack = 95},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 2000, chance = 17, range = 7, target = 1, minDamage = -120, maxDamage = -250, shootEffect = CONST_ANI_SUDDENDEATH},
		{name = "melee", interval = 2000, chance = 10, radius = 3, target = 0, minDamage = -115, maxDamage = -300, effect = CONST_ME_BLACKSPARK},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 1000, chance = 12, length = 8, spread = 0, minDamage = -300, maxDamage = -700, effect = CONST_ME_REDSPARK},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 3000, chance = 15, range = 7, radius = 4, target = 1, minDamage = 0, maxDamage = -395, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_REDSPARK},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 18, length = 7, spread = 3, minDamage = -170, maxDamage = -290, effect = CONST_ME_EXPLOSIONAREA},
}

monster.defenses = {
	defense = 35,
	armor = 35,
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = -15},
		{type = COMBAT_ENERGYDAMAGE, percent = -10},
		{type = COMBAT_EARTHDAMAGE, percent = -8},
		{type = COMBAT_ICEDAMAGE, percent = 15},
		{type = COMBAT_HOLYDAMAGE, percent = 10},
		{type = COMBAT_DEATHDAMAGE, percent = -10},
}

monster.immunities = {
		{type = "fire", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 3000,
	chance = 10,
		{text = "Fire hot!"},
		{text = "Ahhhhrrrrr"},
		{text = "Carnage!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 40},
	{id = 2148, chance = 100000, maxCount = 70},
	{id = 2148, chance = 100000, maxCount = 55},
	{id = 2645, chance = 3666},
	{id = 6558, chance = 27555},
	{id = 6558, chance = 16555},
	{id = 2666, chance = 50000},
	{id = 6500, chance = 5500},
	{id = 5944, chance = 8888},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2487, chance = 6200},
			{id = 6558, chance = 5555},
			{id = 2181, chance = 15500},
			{id = 9811, chance = 7500},
			{id = 2143, chance = 12000},
			{id = 2156, chance = 3900},
			{id = 7404, chance = 5555},
			{id = 5911, chance = 9800},
		}
	},
}

mType:register(monster)
