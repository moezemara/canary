local mType = Game.createMonsterType("Zickster")
local monster = {}

monster.description = "a zickster"
monster.experience = 1750
monster.outfit = {
	lookType = 287,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 800000000
monster.maxHealth = 800000000
monster.race = "undead"
monster.corpse = 8937
monster.speed = 370
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 10,
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
		{name = "melee", interval = 1000, minDamage = -5500000, maxDamage = -6500000},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 75, radius = 10, target = 0, minDamage = -7000000, maxDamage = -7500000, effect = CONST_ME_SMALLCLOUDS},
}

monster.defenses = {
	defense = 30,
	armor = 30,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 25, minDamage = 8000000, maxDamage = 10000000},
}

mType:register(monster)
