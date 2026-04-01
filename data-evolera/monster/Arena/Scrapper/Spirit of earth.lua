local mType = Game.createMonsterType("Spirit of Earth")
local monster = {}

monster.description = "the spirit of earth"
monster.experience = 800
monster.outfit = {
	lookType = 67,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1285
monster.maxHealth = 1285
monster.race = "undead"
monster.corpse = 7349
monster.speed = 180
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
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 78,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -50, maxDamage = -420},
}

monster.defenses = {
	defense = 32,
	armor = 30,
}

monster.immunities = {
		{type = "fire", condition = true},
		{type = "poison", condition = true},
		{type = "paralyze", condition = true},
		{type = "drunk", condition = true},
}

mType:register(monster)
