local mType = Game.createMonsterType("mother of plants")
local monster = {}

monster.description = "a mother of plants"
monster.experience = 3684750000000
monster.outfit = {
	lookType = 221,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 6000000000
monster.maxHealth = 6000000000
monster.race = "venom"
monster.corpse = 6062
monster.speed = 0
monster.manaCost = 0

monster.changeTarget = {
	interval = 300,
	chance = 90,
}

monster.strategiesTarget = {
	nearest = 100,
	defense = 50,
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
	staticAttackChance = 100,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 1000, minDamage = -16000000, maxDamage = -20000000},
		--{name = "attackplantmother", interval = 7000, chance = 80, range = 7, minDamage = -15000000, maxDamage = -22000000},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 2000, chance = 13, range = 7, minDamage = 80000, maxDamage = -620000},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 30, range = 7, radius = 7, target = 1, minDamage = -18000000, maxDamage = -32000000, shootEffect = CONST_ANI_EARTH, effect = CONST_ME_BIGPLANTS},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 12, range = 7, radius = 1, target = 1, shootEffect = CONST_ANI_EARTH},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 12, length = 8, spread = 0, minDamage = -1600000, maxDamage = -2200000, effect = CONST_ME_CARNIPHILA},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 3000, chance = 10, range = 1, target = 1, minDamage = -2500000, maxDamage = -38000000, effect = CONST_ME_SMALLPLANTS},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 30, range = 7, radius = 7, target = 1, minDamage = -2500000, maxDamage = -17000000, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 12, range = 7, radius = 1, target = 1, shootEffect = CONST_ANI_FIRE},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 12, length = 8, spread = 0, minDamage = -2500000, maxDamage = -28000000, effect = CONST_ME_PURPLEENERGY},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 3000, chance = 10, range = 1, target = 1, minDamage = -2800000, maxDamage = -32000000, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1000, chance = 30, range = 7, radius = 7, target = 1, minDamage = -2800000, maxDamage = -29000000, shootEffect = CONST_ANI_ENERGYBALL, effect = CONST_ME_ENERGY},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 12, range = 7, radius = 1, target = 1, shootEffect = CONST_ANI_ENERGYBALL},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 12, length = 8, spread = 0, minDamage = -20000000, maxDamage = -29000000, effect = CONST_ME_ENERGY},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 3000, chance = 10, range = 1, target = 1, minDamage = -8000000, maxDamage = -39000000, effect = CONST_ME_ENERGY},
		{name = "combat", type = COMBAT_HOLYDAMAGE, interval = 1000, chance = 30, range = 7, radius = 7, target = 1, minDamage = -9000000, maxDamage = -39000000, shootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYAREA},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 12, length = 8, spread = 0, minDamage = -9000000, maxDamage = -39000000, effect = CONST_ME_HOLYDAMAGE},
		{name = "combat", type = COMBAT_HOLYDAMAGE, interval = 3000, chance = 10, range = 1, target = 1, minDamage = -12000000, maxDamage = -39000000, effect = CONST_ME_HOLYAREA},
}

monster.defenses = {
	defense = 55,
	armor = 55,
		{name = "combat", type = COMBAT_HEALING, interval = 2000, chance = 20, minDamage = 8000000, maxDamage = 9000000},
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 99},
		{type = COMBAT_HOLYDAMAGE, percent = 99},
}

monster.immunities = {
		{type = "earth", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "small plant", chance = 5, interval = 1000, max = 1},
}

mType:register(monster)
