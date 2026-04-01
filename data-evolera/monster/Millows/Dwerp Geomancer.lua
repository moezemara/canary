local mType = Game.createMonsterType("Dwerp Geomancer")
local monster = {}

monster.description = "a dwerp geomancer"
monster.experience = 245
monster.outfit = {
	lookType = 66,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1280000000
monster.maxHealth = 1280000000
monster.race = "blood"
monster.corpse = 6015
monster.speed = 200
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
	runHealth = 150,
}

monster.attacks = {
		{name = "melee", interval = 1000, minDamage = -5750000, maxDamage = -7050000},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 80, range = 7, radius = 4, target = 1, minDamage = -5000000, maxDamage = -6000000, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 80, range = 7, minDamage = -5000000, maxDamage = -6000000, shootEffect = CONST_ANI_LARGEROCK},
}

monster.defenses = {
	defense = 15,
	armor = 15,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 80, minDamage = 5000000, maxDamage = 10000000},
		{name = "speed", interval = 1000, chance = 80, speedchange = 800, duration = 1000},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Hail Dwerpin!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 20},
}

mType:register(monster)
