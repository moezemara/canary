local mType = Game.createMonsterType("Blightwalker")
local monster = {}

monster.description = "a Blightwalker"
monster.experience = 3350
monster.outfit = {
	lookType = 246,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 8900
monster.maxHealth = 8900
monster.race = "undead"
monster.corpse = 6354
monster.speed = 270
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
		{name = "melee", interval = 2000, skill = 105, attack = 85},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 1000, chance = 10, radius = 7, target = 0, minDamage = -90, maxDamage = -290, effect = CONST_ME_SMALLCLOUDS},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 7, range = 1, minDamage = -225, maxDamage = -405, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISON},
		{name = "drunk", interval = 1000, chance = 8, range = 7, radius = 4, target = 1, minDamage = -150, maxDamage = -350, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISON},
}

monster.defenses = {
	defense = 15,
	armor = 15,
		{name = "combat", type = COMBAT_HEALING, interval = 2000, chance = 50, minDamage = 75, maxDamage = 125},
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = 15},
		{type = COMBAT_ICEDAMAGE, percent = 10},
		{type = COMBAT_ENERGYDAMAGE, percent = 40},
		{type = COMBAT_PHYSICALDAMAGE, percent = -5},
		{type = COMBAT_HOLYDAMAGE, percent = -30},
}

monster.immunities = {
		{type = "earth", condition = true},
		{type = "death", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "I can see you decaying!"},
		{text = "Let me taste your mortality!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 2694, chance = 5000, maxCount = 3},
	{id = 2050, chance = 10000},
	{id = 2230, chance = 6666},
	{id = 2260, chance = 2222},
	{id = 5902, chance = 1100},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2386, chance = 2000},
			{id = 2649, chance = 2500},
			{id = 6500, chance = 2222, maxCount = 2},
			{id = 5944, chance = 1667},
			{id = 2436, chance = 1399},
			{id = 2550, chance = 5000},
			{id = 7884, chance = 1100},
			{id = 7885, chance = 1400},
		}
	},
}

mType:register(monster)
