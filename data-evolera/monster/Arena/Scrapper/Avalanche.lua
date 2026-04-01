local mType = Game.createMonsterType("Avalanche")
local monster = {}

monster.description = "avalanche"
monster.experience = 305
monster.outfit = {
	lookType = 261,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 550
monster.maxHealth = 550
monster.race = "undead"
monster.corpse = 7349
monster.speed = 195
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
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 78,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -10, maxDamage = -185},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 11, length = 5, spread = 0, minDamage = -10, maxDamage = -50, effect = CONST_ME_ENERGYAREA},
		{name = "speed", interval = 1000, chance = 10, radius = 3, speedchange = -400, duration = 10000, effect = CONST_ME_POFF},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 1000, chance = 9, range = 5, radius = 1, target = 1, minDamage = 0, maxDamage = -40, shootEffect = CONST_ANI_SMALLICE},
}

monster.defenses = {
	defense = 27,
	armor = 26,
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = 30},
		{type = COMBAT_ENERGYDAMAGE, percent = -10},
}

mType:register(monster)
