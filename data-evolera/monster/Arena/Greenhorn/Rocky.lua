local mType = Game.createMonsterType("Rocky")
local monster = {}

monster.description = "rocky"
monster.experience = 190
monster.outfit = {
	lookType = 95,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 250
monster.maxHealth = 250
monster.race = "undead"
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
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 78,
	targetDistance = 1,
	runHealth = 30,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -1, maxDamage = -80},
}

monster.defenses = {
	defense = 30,
	armor = 30,
		{name = "combat", type = COMBAT_HEALING, interval = 2000, chance = 50, minDamage = 15, maxDamage = 35},
}

mType:register(monster)
