local mType = Game.createMonsterType("Demonica")
local monster = {}

monster.description = "a Demonica"
monster.experience = 3700
monster.outfit = {
	lookType = 35,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 400000000
monster.maxHealth = 400000000
monster.race = "fire"
monster.corpse = 5995
monster.speed = 300
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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 800, minDamage = -7000000, maxDamage = -8000000},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1600, chance = 100, range = 7, radius = 7, target = 1, minDamage = -8000000, maxDamage = -10000000, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
}

monster.defenses = {
	defense = 15,
	armor = 15,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 50, minDamage = 1000000, maxDamage = 3000000},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Blubb.."},
}

monster.loot = {
	{id = 2157, chance = 100000, maxCount = 6},
}

mType:register(monster)
