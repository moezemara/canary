local mType = Game.createMonsterType("Massive Water Elemental")
local monster = {}

monster.description = "a Massive Water Elemental"
monster.experience = 1950
monster.outfit = {
	lookType = 11,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 2350
monster.maxHealth = 2350
monster.race = "undead"
monster.corpse = 2016
monster.speed = 390
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
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 18, radius = 6, target = 0, minDamage = -55, maxDamage = -320, effect = CONST_ME_POISON},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 2000, chance = 21, radius = 2, target = 1, minDamage = -290, maxDamage = -420, effect = CONST_ME_BLUEBUBBLE, shootEffect = CONST_ANI_SNOWBALL},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 1000, chance = 12, range = 7, target = 1, minDamage = -190, maxDamage = -230, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICEATTACK},
}

monster.defenses = {
	defense = 30,
	armor = 30,
		{name = "combat", type = COMBAT_HEALING, interval = 2000, chance = 15, minDamage = 90, maxDamage = 150},
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 50},
		{type = COMBAT_ENERGYDAMAGE, percent = -15},
		{type = COMBAT_EARTHDAMAGE, percent = 100},
		{type = COMBAT_ICEDAMAGE, percent = 100},
		{type = COMBAT_HOLYDAMAGE, percent = 30},
		{type = COMBAT_DEATHDAMAGE, percent = 60},
}

monster.immunities = {
		{type = "fire", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

mType:register(monster)
