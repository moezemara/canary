local mType = Game.createMonsterType("Dark Torturer")
local monster = {}

monster.description = "a Dark Torturer"
monster.experience = 4650
monster.outfit = {
	lookType = 234,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 7350
monster.maxHealth = 7350
monster.race = "blood"
monster.corpse = 6328
monster.speed = 285
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
	runHealth = 900,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 105, attack = 120},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 1000, chance = 12, length = 8, spread = 4, minDamage = 0, maxDamage = 0, effect = CONST_ME_PURPLENOTE},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 22, range = 7, minDamage = -90, maxDamage = -800, shootEffect = CONST_ANI_THROWINGKNIFE},
}

monster.defenses = {
	defense = 60,
	armor = 50,
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = 55},
		{type = COMBAT_EARTHDAMAGE, percent = 60},
		{type = COMBAT_ICEDAMAGE, percent = -15},
		{type = COMBAT_HOLYDAMAGE, percent = -20},
		{type = COMBAT_DEATHDAMAGE, percent = 40},
}

monster.immunities = {
		{type = "fire", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "You like it, don't you?"},
		{text = "IahaEhheAie!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2152, chance = 50000, maxCount = 4},
	{id = 2671, chance = 33333, maxCount = 5},
	{id = 6558, chance = 14555},
	{id = 6558, chance = 9555},
	{id = 6300, chance = 3266},
	{id = 2645, chance = 1800},
	{id = 9971, chance = 4050},
	{id = 7368, chance = 5500, maxCount = 2},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2513, chance = 9999},
			{id = 6500, chance = 7500},
			{id = 6500, chance = 6555},
			{id = 2557, chance = 11000},
			{id = 2558, chance = 13000},
			{id = 7388, chance = 1150},
			{id = 7412, chance = 1050},
			{id = 5801, chance = 3100},
			{id = 5480, chance = 2188},
		}
	},
}

mType:register(monster)
