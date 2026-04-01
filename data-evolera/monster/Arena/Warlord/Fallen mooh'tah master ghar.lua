local mType = Game.createMonsterType("Fallen Mooh'tah Master Ghar")
local monster = {}

monster.description = "fallen mooh'tah master ghar"
monster.experience = 4400
monster.outfit = {
	lookType = 29,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 8000
monster.maxHealth = 8000
monster.race = "blood"
monster.corpse = 7349
monster.speed = 285
monster.manaCost = 0

monster.changeTarget = {
	interval = 1000,
	chance = 0,
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
	canPushCreatures = false,
	staticAttackChance = 75,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 100, attack = 120},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 15, length = 8, spread = 3, minDamage = 0, maxDamage = -290, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 18, range = 7, target = 1, minDamage = -80, maxDamage = -400, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREATTACK},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 1000, chance = 13, target = 1, minDamage = -80, maxDamage = -265, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 20, range = 5, target = 1, minDamage = -50, maxDamage = -195, effect = CONST_ME_GREENSHIMMER, shootEffect = CONST_ANI_POISON},
}

monster.defenses = {
	defense = 40,
	armor = 30,
}

monster.voices = {
	interval = 2000,
	chance = 5,
		{text = "I will finish you!"},
		{text = "You are no match for a master of the Mooh'Tha!"},
}

mType:register(monster)
