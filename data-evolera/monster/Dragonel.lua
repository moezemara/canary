local mType = Game.createMonsterType("Dragonel")
local monster = {}

monster.description = "a dragonel"
monster.experience = 0
monster.outfit = {
	lookType = 271,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 18750000
monster.maxHealth = 18750000
monster.race = "blood"
monster.corpse = 7621
monster.speed = 800
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 5,
}

monster.strategiesTarget = {
	nearest = 70,
	defense = 10,
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
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 80,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 60, attack = 400000},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 12, length = 8, spread = 3, minDamage = -100000, maxDamage = -200000, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 14, length = 8, spread = 3, minDamage = -180000, maxDamage = -20000, effect = CONST_ME_POFF},
}

monster.defenses = {
	defense = 20,
	armor = 25,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 13, minDamage = 400000, maxDamage = 600000},
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = 15},
		{type = COMBAT_EARTHDAMAGE, percent = 70},
		{type = COMBAT_ICEDAMAGE, percent = -15},
}

monster.immunities = {
		{type = "fire", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 50,
		{text = "Fchu?"},
}

monster.loot = {
	{id = 7618, chance = 5000},
	{id = 2148, chance = 100000, maxCount = 26},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 9971, chance = 100000, maxCount = 5},
		}
	},
}

mType:register(monster)
