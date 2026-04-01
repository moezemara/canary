local mType = Game.createMonsterType("The Halloween Hare")
local monster = {}

monster.description = "The Halloween Hare"
monster.experience = 0
monster.outfit = {
	lookType = 74,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 2000
monster.maxHealth = 2000
monster.race = "blood"
monster.corpse = 0
monster.speed = 150
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 95,
}

monster.strategiesTarget = {
	nearest = 0,
}

monster.flags = {
	summonable = false,
	attackable = false,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 10,
	targetDistance = 2,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 0, attack = 0},
		{name = "outfit", interval = 2000, chance = 6, radius = 3, duration = 6000, effect = CONST_ME_YELLOWSPARK},
		{name = "outfit", interval = 2000, chance = 5, radius = 3, duration = 6000, effect = CONST_ME_YELLOWSPARK},
		{name = "outfit", interval = 2000, chance = 6, radius = 3, duration = 6000, effect = CONST_ME_YELLOWSPARK},
		{name = "outfit", interval = 2000, chance = 5, radius = 3, duration = 6000, effect = CONST_ME_YELLOWSPARK},
		{name = "outfit", interval = 2000, chance = 6, radius = 3, duration = 6000, effect = CONST_ME_YELLOWSPARK},
		{name = "outfit", interval = 2000, chance = 5, radius = 3, duration = 6000, effect = CONST_ME_YELLOWSPARK},
		{name = "outfit", interval = 2000, chance = 5, radius = 3, duration = 6000, effect = CONST_ME_YELLOWSPARK},
		{name = "outfit", interval = 2000, chance = 5, radius = 3, duration = 6000, effect = CONST_ME_YELLOWSPARK},
		{name = "outfit", interval = 2000, chance = 5, radius = 3, duration = 6000, effect = CONST_ME_YELLOWSPARK},
		{name = "outfit", interval = 2000, chance = 5, radius = 3, duration = 6000, effect = CONST_ME_YELLOWSPARK},
		{name = "outfit", interval = 2000, chance = 5, radius = 3, duration = 6000, effect = CONST_ME_YELLOWSPARK},
		{name = "outfit", interval = 2000, chance = 5, radius = 3, duration = 6000, effect = CONST_ME_YELLOWSPARK},
		{name = "outfit", interval = 2000, chance = 5, radius = 3, duration = 6000, effect = CONST_ME_YELLOWSPARK},
		{name = "outfit", interval = 2000, chance = 5, radius = 3, duration = 6000, effect = CONST_ME_YELLOWSPARK},
		{name = "outfit", interval = 2000, chance = 15, radius = 3, duration = 6000, effect = CONST_ME_YELLOWSPARK},
}

monster.defenses = {
	defense = 999,
	armor = 999,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 50, minDamage = 1500, maxDamage = 2000},
}

mType:register(monster)
