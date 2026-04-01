local mType = Game.createMonsterType("Vip Exp")
local monster = {}

monster.description = "a VIp Exp"
monster.experience = 600000
monster.outfit = {
	lookType = 309,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 80000000
monster.maxHealth = 80000000
monster.race = "blood"
monster.corpse = 6080
monster.speed = 268
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
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -0, maxDamage = -900},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 2000, chance = 10, range = 7, minDamage = -0, maxDamage = -2, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_POFF},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 2000, chance = 15, range = 7, radius = 7, target = 1, minDamage = -0, maxDamage = -8, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_BIGCLOUDS},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 2000, chance = 20, range = 7, minDamage = -0, maxDamage = -5, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 10, length = 8, spread = 0, minDamage = -100, maxDamage = -5, effect = CONST_ME_SLEEP},
}

monster.defenses = {
	defense = 20,
	armor = 30,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 15, minDamage = 150, maxDamage = 5},
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = 60},
		{type = COMBAT_ICEDAMAGE, percent = 50},
		{type = COMBAT_FIREDAMAGE, percent = 50},
		{type = COMBAT_HOLYDAMAGE, percent = 50},
		{type = COMBAT_EARTHDAMAGE, percent = 50},
		{type = COMBAT_PHYSICALDAMAGE, percent = 40},
		{type = COMBAT_DEATHDAMAGE, percent = 60},
}

monster.immunities = {
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Tu Znajdziesz Wiele Expowisk", yell = true},
		{text = "Vipa Mozna Kupic Komenda !buyvip", yell = true},
}

mType:register(monster)
