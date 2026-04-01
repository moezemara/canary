local mType = Game.createMonsterType("Earth Overlord")
local monster = {}

monster.description = "an earth Overlord"
monster.experience = 2800
monster.outfit = {
	lookType = 285,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 4000
monster.maxHealth = 4000
monster.race = "undead"
monster.corpse = 8933
monster.speed = 330
monster.manaCost = 0

monster.changeTarget = {
	interval = 20000,
	chance = 30,
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
		{name = "melee", interval = 2000, skill = 120, attack = 135},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 10, length = 7, spread = 0, minDamage = 0, maxDamage = -800, effect = CONST_ME_STONES},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 9, radius = 6, minDamage = 0, maxDamage = -490, effect = CONST_ME_BIGPLANTS},
		{name = "speed", interval = 2000, chance = 20, range = 7, speedchange = -750, duration = 4000, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 30,
	armor = 30,
}

monster.elements = {
		{type = COMBAT_DEATHDAMAGE, percent = 30},
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
	{id = 2148, chance = 100000, maxCount = 130},
	{id = 2152, chance = 6000, maxCount = 3},
	{id = 8305, chance = 2200},
}

mType:register(monster)
