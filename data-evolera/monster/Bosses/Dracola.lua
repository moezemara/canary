local mType = Game.createMonsterType("Dracola")
local monster = {}

monster.description = "a dracola"
monster.experience = 7750
monster.outfit = {
	lookType = 231,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 15850
monster.maxHealth = 15850
monster.race = "undead"
monster.corpse = 6307
monster.speed = 410
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
	pushable = true,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 85, attack = 85},
		{name = "melee", interval = 2000, chance = 20, range = 7, radius = 4, target = 1, minDamage = -300, maxDamage = -395, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_REDSPARK},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 3000, chance = 10, range = 7, minDamage = -0, maxDamage = -800, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 20, range = 7, radius = 4, target = 1, minDamage = -120, maxDamage = -390, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISON},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 23, range = 7, minDamage = -50, maxDamage = -180, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISON},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 4000, chance = 20, length = 8, spread = 3, minDamage = -500, maxDamage = -600, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 20, length = 8, spread = 3, minDamage = -200, maxDamage = -685, effect = CONST_ME_POISON},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 3000, chance = 20, length = 8, spread = 3, minDamage = -300, maxDamage = -600, effect = CONST_ME_GREENSHIMMER},
		--{name = "drowncondition", interval = 1000, chance = 20, length = 8, spread = 3, effect = CONST_ME_POFF},
}

monster.defenses = {
	defense = 39,
	armor = 40,
}

monster.elements = {
		{type = COMBAT_EARTHDAMAGE, percent = 100},
}

monster.immunities = {
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 2000,
	chance = 5,
		{text = "DEATH CAN'T STOP MY HUNGER!", yell = true},
}

monster.loot = {
	{id = 2152, chance = 20000, maxCount = 8},
	{id = 6500, chance = 1000, maxCount = 4},
	{id = 6546, chance = 100000},
}

mType:register(monster)
