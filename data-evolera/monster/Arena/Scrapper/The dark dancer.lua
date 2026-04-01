local mType = Game.createMonsterType("The Dark Dancer")
local monster = {}

monster.description = "the dark dancer"
monster.experience = 435
monster.outfit = {
	lookType = 58,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 805
monster.maxHealth = 805
monster.race = "blood"
monster.corpse = 7349
monster.speed = 170
monster.manaCost = 0

monster.changeTarget = {
	interval = 60000,
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
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 78,
	targetDistance = 5,
	runHealth = 0,
}

monster.attacks = {
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, minDamage = -55, maxDamage = -99},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 3000, chance = 70, range = 5, radius = 1, target = 1, minDamage = -60, maxDamage = -95, effect = CONST_ME_MORTAREA, shootEffect = CONST_ANI_SUDDENDEATH},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 6000, chance = 90, range = 5, radius = 1, target = 1, minDamage = -60, maxDamage = -95, effect = CONST_ME_MORTAREA, shootEffect = CONST_ANI_SUDDENDEATH},
		{name = "speed", interval = 3500, chance = 35, range = 5, radius = 1, target = 1, duration = 10000, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 4000, chance = 30, range = 5, radius = 1, target = 1, minDamage = -2, maxDamage = -110, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 12,
	armor = 11,
		{name = "combat", type = COMBAT_HEALING, interval = 2000, chance = 45, minDamage = 75, maxDamage = 135},
		{name = "invisible", interval = 3000, chance = 50, duration = 5000},
}

monster.summons = {
		{name = "Ghoul", chance = 20, interval = 2000, max = 1},
}

mType:register(monster)
