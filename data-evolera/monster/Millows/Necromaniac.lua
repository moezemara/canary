local mType = Game.createMonsterType("Necromaniac")
local monster = {}

monster.description = "a Necromaniac"
monster.experience = 580
monster.outfit = {
	lookType = 9,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 380000000
monster.maxHealth = 380000000
monster.race = "blood"
monster.corpse = 6080
monster.speed = 0
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
	attackable = false,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 2,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 30, attack = 40},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 1000, chance = 1000, range = 5, minDamage = -2200000, maxDamage = -2800000, effect = CONST_ME_SMALLCLOUDS},
}

monster.defenses = {
	defense = 0,
	armor = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Your soul shall suffer!"},
}

mType:register(monster)
