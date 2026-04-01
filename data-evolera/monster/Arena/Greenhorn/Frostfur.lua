local mType = Game.createMonsterType("Frostfur")
local monster = {}

monster.description = "frostfur"
monster.experience = 35
monster.outfit = {
	lookType = 52,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 65
monster.maxHealth = 65
monster.race = "blood"
monster.corpse = 7349
monster.speed = 170
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
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 78,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -1, maxDamage = -25},
}

monster.defenses = {
	defense = 3,
	armor = 2,
}

mType:register(monster)
