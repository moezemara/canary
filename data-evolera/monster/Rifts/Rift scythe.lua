local mType = Game.createMonsterType("Rift Scythe")
local monster = {}

monster.description = "a rift scythe"
monster.experience = 2000
monster.outfit = {
	lookType = 300,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 3600
monster.maxHealth = 3600
monster.race = "undead"
monster.corpse = 0
monster.speed = 370
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 10,
}

monster.strategiesTarget = {
	nearest = 80,
	defense = 20,
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
	canPushCreatures = true,
	staticAttackChance = 85,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 135, attack = 135},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 2000, chance = 60, range = 7, target = 1, minDamage = 0, maxDamage = -200, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 50, length = 7, spread = 0, minDamage = 0, maxDamage = -600, effect = CONST_ME_REDSPARK},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 40, radius = 4, target = 0, minDamage = 0, maxDamage = -395, effect = CONST_ME_REDSPARK},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 3000, chance = 60, length = 7, spread = 3, minDamage = 0, maxDamage = -300, effect = CONST_ME_EXPLOSIONAREA},
}

monster.defenses = {
	defense = 30,
	armor = 30,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 25, minDamage = 100, maxDamage = 195},
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = -10},
		{type = COMBAT_EARTHDAMAGE, percent = 20},
		{type = COMBAT_ICEDAMAGE, percent = 10},
		{type = COMBAT_HOLYDAMAGE, percent = -20},
		{type = COMBAT_DEATHDAMAGE, percent = 60},
		{type = COMBAT_FIREDAMAGE, percent = -20},
}

monster.immunities = {
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

mType:register(monster)
