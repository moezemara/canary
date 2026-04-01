local mType = Game.createMonsterType("Heartless Demon")
local monster = {}

monster.description = "Heartless Demon"
monster.experience = 120000000
monster.outfit = {
	lookType = 12,
	lookHead = 1,
	lookBody = 18,
	lookLegs = 2,
	lookFeet = 92,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 670000000
monster.maxHealth = 670000000
monster.race = "blood"
monster.corpse = 6068
monster.speed = 2050
monster.manaCost = 0

monster.changeTarget = {
	interval = 10000,
	chance = 15,
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
		{name = "melee", interval = 1, minDamage = -400000, maxDamage = -600000},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1, chance = 20, radius = 4, target = 1, minDamage = -600000, maxDamage = 700000, effect = CONST_ME_EXPLOSION},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 1, chance = 15, radius = 4, target = 0, minDamage = -1700000, maxDamage = -2000000},
}

monster.defenses = {
	defense = 0,
	armor = 0,
}

mType:register(monster)
