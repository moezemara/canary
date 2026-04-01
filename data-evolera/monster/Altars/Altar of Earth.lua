local mType = Game.createMonsterType("Altar of Earth")
local monster = {}

monster.description = "a altar of earth"
monster.experience = 10000000
monster.outfit = {
	lookType = 0,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1800000000
monster.maxHealth = 1800000000
monster.race = "undead"
monster.corpse = 0
monster.speed = 0
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 0,
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
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 100,
}

monster.attacks = {
		{name = "melee", interval = 20, chance = 100, range = 1, skill = 90, attack = 800000, maxDamage = -3000000},
		{name = "drunk", interval = 1000, chance = 20, duration = 1000, effect = CONST_ME_HEARTS, shootEffect = CONST_ANI_SMALLHOLY},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 2000, chance = 14, range = 7, radius = 3, minDamage = -5000000, maxDamage = -12000000, effect = CONST_ME_BLUEBUBBLE},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 12, range = 7, radius = 5, minDamage = -5000000, maxDamage = -9000000, effect = CONST_ME_SMALLPLANTS},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 1000, chance = 14, range = 7, target = 1, minDamage = -5000000, maxDamage = -6000000, shootEffect = CONST_ANI_SMALLICE},
		{name = "speed", interval = 3000, chance = 40, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 3000, chance = 40, range = 7, radius = 8, target = 1, minDamage = -8000000, maxDamage = -9000000, effect = CONST_ME_POISON},
}

monster.defenses = {
	defense = 1,
	armor = 1,
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 95},
		{type = COMBAT_HOLYDAMAGE, percent = 95},
}

monster.immunities = {
		{type = "poison", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

mType:register(monster)
