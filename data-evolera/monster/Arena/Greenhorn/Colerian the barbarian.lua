local mType = Game.createMonsterType("Colerian The Barbarian")
local monster = {}

monster.description = "colerian the barbarian"
monster.experience = 90
monster.outfit = {
	lookType = 253,
	lookHead = 76,
	lookBody = 115,
	lookLegs = 115,
	lookFeet = 43,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 265
monster.maxHealth = 265
monster.race = "blood"
monster.corpse = 7349
monster.speed = 190
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
	staticAttackChance = 100,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -30, maxDamage = -65},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 80, range = 5, radius = 1, target = 1, minDamage = 0, maxDamage = -40, shootEffect = CONST_ANI_PIERCINGBOLT},
}

monster.defenses = {
	defense = 20,
	armor = 19,
}

monster.voices = {
	interval = 2000,
	chance = 5,
		{text = "Flee, coward!"},
}

mType:register(monster)
