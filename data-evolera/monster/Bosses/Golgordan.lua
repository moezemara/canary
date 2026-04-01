local mType = Game.createMonsterType("Golgordan")
local monster = {}

monster.description = "golgordan"
monster.experience = 10000
monster.outfit = {
	lookType = 12,
	lookHead = 108,
	lookBody = 100,
	lookLegs = 105,
	lookFeet = 114,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 40000
monster.maxHealth = 40000
monster.race = "fire"
monster.corpse = 6068
monster.speed = 350
monster.manaCost = 0

monster.changeTarget = {
	interval = 7000,
	chance = 10,
}

monster.strategiesTarget = {
	nearest = 90,
	defense = 10,
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
	staticAttackChance = 85,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 105, attack = 100},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 3000, chance = 15, length = 8, spread = 0, minDamage = -250, maxDamage = -850, effect = CONST_ME_MORTAREA},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 11, length = 5, spread = 2, minDamage = -300, maxDamage = -350, effect = CONST_ME_POISON},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 8, radius = 6, target = 0, minDamage = -50, maxDamage = -955, effect = CONST_ME_GROUNDSHAKER},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 15, radius = 7, target = 1, minDamage = -50, maxDamage = -200, effect = CONST_ME_FIREAREA},
}

monster.defenses = {
	defense = 54,
	armor = 48,
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = -10},
		{type = COMBAT_HOLYDAMAGE, percent = 15},
		{type = COMBAT_PHYSICALDAMAGE, percent = 20},
		{type = COMBAT_FIREDAMAGE, percent = -5},
}

monster.immunities = {
		{type = "death", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Latrivan your fool", yell = true},
}

mType:register(monster)
