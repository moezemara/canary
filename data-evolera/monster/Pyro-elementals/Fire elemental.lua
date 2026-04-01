local mType = Game.createMonsterType("Fire Elemental")
local monster = {}

monster.description = "a fire elemental"
monster.experience = 280
monster.outfit = {
	lookType = 49,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 280
monster.maxHealth = 280
monster.race = "fire"
monster.corpse = 1492
monster.speed = 220
monster.manaCost = 650

monster.changeTarget = {
	interval = 5000,
	chance = 8,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 38, attack = 38},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 16, range = 7, radius = 2, target = 1, minDamage = -55, maxDamage = -155, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 14, range = 7, radius = 1, target = 1, shootEffect = CONST_ANI_FIRE},
}

monster.defenses = {
	defense = 0,
	armor = 0,
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = -25},
}

monster.immunities = {
		{type = "fire", condition = true},
		{type = "death", condition = true},
		{type = "invisible", condition = true},
}

mType:register(monster)
