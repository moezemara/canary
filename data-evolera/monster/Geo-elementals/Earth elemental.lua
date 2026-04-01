local mType = Game.createMonsterType("Earth Elemental")
local monster = {}

monster.description = "a earth elemental"
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
monster.speed = 330
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
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 20, range = 7, minDamage = -25, maxDamage = -195, shootEffect = CONST_ANI_LARGEROCK},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 10, length = 6, spread = 0, minDamage = 0, maxDamage = -260, effect = CONST_ME_GROUNDSHAKER},
		{name = "speed", interval = 2000, chance = 20, range = 7, speedchange = -450, duration = 4000, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 30,
	armor = 30,
}

monster.elements = {
		{type = COMBAT_DEATHDAMAGE, percent = 20},
		{type = COMBAT_ICEDAMAGE, percent = 20},
		{type = COMBAT_PHYSICALDAMAGE, percent = 20},
		{type = COMBAT_HOLYDAMAGE, percent = 20},
		{type = COMBAT_FIREDAMAGE, percent = -25},
}

monster.immunities = {
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
		{type = "earth", condition = true},
		{type = "energy", condition = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 44},
	{id = 7850, chance = 6000, maxCount = 3},
	{id = 1294, chance = 9000, maxCount = 9},
}

mType:register(monster)
