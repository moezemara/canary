local mType = Game.createMonsterType("Axeitus Headbanger")
local monster = {}

monster.description = "axeitus headbanger"
monster.experience = 140
monster.outfit = {
	lookType = 71,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 365
monster.maxHealth = 365
monster.race = "blood"
monster.corpse = 7349
monster.speed = 170
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
	staticAttackChance = 78,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -5, maxDamage = -45},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 80, range = 5, radius = 1, target = 1, minDamage = 0, maxDamage = -50, shootEffect = CONST_ANI_SMALLSTONE},
}

monster.defenses = {
	defense = 17,
	armor = 15,
}

mType:register(monster)
