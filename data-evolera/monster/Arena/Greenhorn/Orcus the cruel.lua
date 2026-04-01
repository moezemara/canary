local mType = Game.createMonsterType("Orcus the Cruel")
local monster = {}

monster.description = "orcus the cruel"
monster.experience = 280
monster.outfit = {
	lookType = 59,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 480
monster.maxHealth = 480
monster.race = "blood"
monster.corpse = 7349
monster.speed = 230
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
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -45, maxDamage = -130},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 40, range = 5, radius = 1, target = 1, minDamage = 0, maxDamage = -70, shootEffect = CONST_ANI_THROWINGKNIFE},
}

monster.defenses = {
	defense = 40,
	armor = 39,
}

mType:register(monster)
