local mType = Game.createMonsterType("Kreebosh the Exile")
local monster = {}

monster.description = "kreebosh the exile"
monster.experience = 350
monster.outfit = {
	lookType = 103,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 880
monster.maxHealth = 880
monster.race = "blood"
monster.corpse = 7349
monster.speed = 270
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
	canPushCreatures = false,
	staticAttackChance = 78,
	targetDistance = 1,
	runHealth = 50,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -1, maxDamage = -100},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 6000, chance = 80, radius = 3, minDamage = 0, maxDamage = -120, effect = CONST_ME_ENERGY},
		{name = "speed", interval = 3500, chance = 35, range = 5, radius = 1, target = 1, duration = 20000, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 6000, chance = 40, range = 5, radius = 1, target = 1, minDamage = -20, maxDamage = -100, effect = CONST_ME_MORTAREA, shootEffect = CONST_ANI_SUDDENDEATH},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 5000, chance = 20, range = 5, radius = 1, target = 1, minDamage = -40, maxDamage = -200, effect = CONST_ME_FIREAREA, shootEffect = CONST_ANI_ENERGY},
		{name = "drunk", interval = 1000, chance = 20, range = 5, radius = 1, target = 1, duration = 30000},
		{name = "outfit", interval = 2000, chance = 50, range = 5, radius = 1, target = 1, duration = 60000, effect = CONST_ME_GREENSHIMMER},
}

monster.defenses = {
	defense = 40,
	armor = 30,
}

monster.summons = {
		{name = "Green Djinn", chance = 20, interval = 5000, max = 1},
}

mType:register(monster)
