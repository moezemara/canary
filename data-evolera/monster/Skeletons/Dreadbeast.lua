local mType = Game.createMonsterType("Dreadbeast")
local monster = {}

monster.description = "a dreadbeast"
monster.experience = 580
monster.outfit = {
	lookType = 101,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 515
monster.maxHealth = 515
monster.race = "undead"
monster.corpse = 3031
monster.speed = 200
monster.manaCost = 800

monster.changeTarget = {
	interval = 60000,
	chance = 10,
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
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 80,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -0, maxDamage = -100},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 20, radius = 1, target = 1, minDamage = -150, maxDamage = -250, effect = CONST_ME_YELLOWENERGY, shootEffect = CONST_ANI_SUDDENDEATH},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 20, radius = 1, target = 1, minDamage = -150, maxDamage = -250, effect = CONST_ME_PURPLEENERGY, shootEffect = CONST_ANI_SUDDENDEATH},
}

monster.defenses = {
	defense = 36,
	armor = 34,
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = 70},
		{type = COMBAT_PHYSICALDAMAGE, percent = -25},
}

monster.immunities = {
		{type = "poison", condition = true},
		{type = "paralyze", condition = true},
}

mType:register(monster)
