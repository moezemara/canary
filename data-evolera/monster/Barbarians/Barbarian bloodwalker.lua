local mType = Game.createMonsterType("Barbarian Bloodwalker")
local monster = {}

monster.description = "a barbarian bloodwalker"
monster.experience = 195
monster.outfit = {
	lookType = 255,
	lookHead = 114,
	lookBody = 132,
	lookLegs = 132,
	lookFeet = 132,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 305
monster.maxHealth = 305
monster.race = "blood"
monster.corpse = 6080
monster.speed = 205
monster.manaCost = 590

monster.changeTarget = {
	interval = 2000,
	chance = 5,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 80,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -60, maxDamage = -170},
}

monster.defenses = {
	defense = 15,
	armor = 15,
		{name = "speed", interval = 1000, chance = 12, speedchange = 260, duration = 40000},
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 5},
		{type = COMBAT_ICEDAMAGE, percent = 50},
		{type = COMBAT_ENERGYDAMAGE, percent = 20},
		{type = COMBAT_EARTHDAMAGE, percent = -10},
		{type = COMBAT_DEATHDAMAGE, percent = -5},
}

monster.immunities = {
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 2000,
	chance = 20,
		{text = "YAAAHEEE!"},
		{text = "SLAUGHTER!"},
		{text = "CARNAGE!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 71},
	{id = 2671, chance = 33000},
	{id = 2381, chance = 2777},
	{id = 2378, chance = 2888},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2458, chance = 7999},
			{id = 2050, chance = 11111},
			{id = 2464, chance = 4444},
			{id = 7457, chance = 1222},
			{id = 5911, chance = 4555},
			{id = 7290, chance = 3222},
			{id = 3962, chance = 1688},
		}
	},
}

mType:register(monster)
