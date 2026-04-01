local mType = Game.createMonsterType("Ice Golem")
local monster = {}

monster.description = "an ice golem"
monster.experience = 295
monster.outfit = {
	lookType = 261,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 385
monster.maxHealth = 385
monster.race = "undead"
monster.corpse = 7282
monster.speed = 235
monster.manaCost = 0

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
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 50,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -0, maxDamage = -180},
		{name = "speed", interval = 1000, chance = 13, length = 8, spread = 0, speedchange = -800, duration = 20000, effect = CONST_ME_ENERGY},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 15, range = 7, minDamage = -0, maxDamage = -85, shootEffect = CONST_ANI_LARGEROCK},
		{name = "melee", interval = 2000, chance = 15, range = 7, radius = 3, target = 0, minDamage = -10, maxDamage = -80, effect = CONST_ME_BLACKSPARK},
}

monster.defenses = {
	defense = 26,
	armor = 25,
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = -20},
		{type = COMBAT_PHYSICALDAMAGE, percent = 25},
}

monster.immunities = {
		{type = "fire", condition = true},
		{type = "ice", condition = true},
		{type = "holy", condition = true},
		{type = "death", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 2000,
	chance = 5,
		{text = "Chrr."},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 2144, chance = 4200},
	{id = 7290, chance = 3666},
	{id = 2145, chance = 3333},
	{id = 7441, chance = 2222},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2146, chance = 4200},
			{id = 2396, chance = 2050},
			{id = 2479, chance = 2555},
			{id = 7449, chance = 1999},
			{id = 2383, chance = 3111},
		}
	},
}

mType:register(monster)
