local mType = Game.createMonsterType("Spirit of Water")
local monster = {}

monster.description = "the spirit of water"
monster.experience = 850
monster.outfit = {
	lookType = 11,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1430
monster.maxHealth = 1430
monster.race = "undead"
monster.corpse = 7349
monster.speed = 200
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
		{name = "melee", interval = 2000, minDamage = -1, maxDamage = -120},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 50, shootEffect = CONST_ANI_POISON},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, spread = 3, minDamage = -1, maxDamage = -120, effect = CONST_ME_BLUEBUBBLE},
}

monster.defenses = {
	defense = 0,
	armor = 0,
}

monster.immunities = {
		{type = "fire", condition = true},
		{type = "poison", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

mType:register(monster)
