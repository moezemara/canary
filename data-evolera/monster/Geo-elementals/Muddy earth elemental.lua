local mType = Game.createMonsterType("Muddy Earth Elemental")
local monster = {}

monster.description = "a muddy earth elemental"
monster.experience = 450
monster.outfit = {
	lookType = 301,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 650
monster.maxHealth = 650
monster.race = "undead"
monster.corpse = 8933
monster.speed = 260
monster.manaCost = 0

monster.changeTarget = {
	interval = 20000,
	chance = 50,
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
	staticAttackChance = 80,
	targetDistance = 1,
	runHealth = 1,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 70, attack = 75},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 15, range = 7, radius = 2, target = 1, minDamage = -25, maxDamage = -155, effect = CONST_ME_STONES},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 10, length = 6, spread = 0, minDamage = 0, maxDamage = -26, effect = CONST_ME_GROUNDSHAKER},
}

monster.defenses = {
	defense = 30,
	armor = 30,
}

monster.elements = {
		{type = COMBAT_DEATHDAMAGE, percent = 20},
		{type = COMBAT_ICEDAMAGE, percent = 20},
		{type = COMBAT_PHYSICALDAMAGE, percent = 20},
		{type = COMBAT_ENERGYDAMAGE, percent = 20},
		{type = COMBAT_FIREDAMAGE, percent = -25},
}

monster.immunities = {
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
		{type = "earth", condition = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 44},
	{id = 5880, chance = 1800},
	{id = 8298, chance = 2000},
}

mType:register(monster)
