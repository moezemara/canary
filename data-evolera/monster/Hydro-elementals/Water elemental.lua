local mType = Game.createMonsterType("Water Elemental")
local monster = {}

monster.description = "a Water Elemental"
monster.experience = 450
monster.outfit = {
	lookType = 286,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 550
monster.maxHealth = 550
monster.race = "undead"
monster.corpse = 2016
monster.speed = 280
monster.manaCost = 0

monster.changeTarget = {
	interval = 20000,
	chance = 15,
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
	staticAttackChance = 85,
	targetDistance = 1,
	runHealth = 1,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 75, attack = 65},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 20, range = 7, target = 1, minDamage = 0, maxDamage = -120, shootEffect = CONST_ANI_EARTH, effect = CONST_ME_SMALLPLANTS},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 10, range = 6, target = 1, minDamage = 0, maxDamage = -209, shootEffect = CONST_ANI_SNOWBALL},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 2000, chance = 18, range = 4, target = 1, minDamage = 0, maxDamage = -103, shootEffect = CONST_ANI_SMALLICE},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 9, range = 7, radius = 2, target = 1, minDamage = 0, maxDamage = -240, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_GIANTICE},
}

monster.defenses = {
	defense = 30,
	armor = 30,
		{name = "combat", type = COMBAT_HEALING, interval = 2000, chance = 15, minDamage = 90, maxDamage = 150},
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 70},
		{type = COMBAT_ENERGYDAMAGE, percent = -25},
		{type = COMBAT_HOLYDAMAGE, percent = 20},
		{type = COMBAT_DEATHDAMAGE, percent = 30},
}

monster.immunities = {
		{type = "ice", condition = true},
		{type = "fire", condition = true},
		{type = "poison", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

mType:register(monster)
