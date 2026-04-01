local mType = Game.createMonsterType("Nomed")
local monster = {}

monster.description = "a nomed"
monster.experience = 6000
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
monster.health = 650000000
monster.maxHealth = 650000000
monster.race = "fire"
monster.corpse = 5995
monster.speed = 500
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8,
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
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 1000, minDamage = -3000000, maxDamage = -3500000},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 50, range = 2, radius = 4, target = 1, minDamage = -1500000, maxDamage = -2000000, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 50, range = 2, target = 1, minDamage = -1500000, maxDamage = -2000000, effect = CONST_ME_FIREATTACK, shootEffect = CONST_ANI_FIRE},
}

monster.defenses = {
	defense = 55,
	armor = 55,
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "MUHAHAHAHA!", yell = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
}

mType:register(monster)
