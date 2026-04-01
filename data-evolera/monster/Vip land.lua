local mType = Game.createMonsterType("Vip Land")
local monster = {}

monster.description = "a Vip Land"
monster.experience = 600000
monster.outfit = {
	lookType = 309,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 80000000
monster.maxHealth = 80000000
monster.race = "blood"
monster.corpse = 6080
monster.speed = 268
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
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -0, maxDamage = -9},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 2000, chance = 10, range = 7, minDamage = -0, maxDamage = -20, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_POFF},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 2000, chance = 15, range = 7, radius = 7, target = 1, minDamage = -0, maxDamage = -8, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_BIGCLOUDS},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 2000, chance = 20, range = 7, minDamage = -0, maxDamage = -5, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 10, length = 8, spread = 0, minDamage = -100, maxDamage = -5, effect = CONST_ME_SLEEP},
}

monster.defenses = {
	defense = 20,
	armor = 30,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 15, minDamage = 150, maxDamage = 500},
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = 60},
		{type = COMBAT_ICEDAMAGE, percent = 50},
		{type = COMBAT_FIREDAMAGE, percent = 50},
		{type = COMBAT_HOLYDAMAGE, percent = 50},
		{type = COMBAT_EARTHDAMAGE, percent = 50},
		{type = COMBAT_PHYSICALDAMAGE, percent = 40},
		{type = COMBAT_DEATHDAMAGE, percent = 60},
}

monster.immunities = {
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "The ultimate will finally consume this unworthy existence!", yell = true},
		{text = "My masters and I will tear down barriers and join the ultimate in its realm!", yell = true},
		{text = "The power of the Yalahar will all be mine!", yell = true},
		{text = "We will open the rift for a new time to come!"},
		{text = "He who has returned from beyond has taught me secrets you can't even grasp!"},
		{text = "The end of times has come!"},
		{text = "The great machinator will make his entrance soon!"},
		{text = "You might scratch my shields but they will never break!"},
		{text = "You can't hope to penetrate my shields!"},
		{text = "Do you really think you could beat me?"},
}

mType:register(monster)
