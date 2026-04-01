local mType = Game.createMonsterType("child of holy")
local monster = {}

monster.description = "a child of holy"
monster.experience = 20
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
monster.health = 2000000000
monster.maxHealth = 2000000000
monster.race = "venom"
monster.corpse = 6062
monster.speed = 0
monster.manaCost = 0

monster.changeTarget = {
	interval = 500,
	chance = 90,
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
	staticAttackChance = 100,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 1000, minDamage = -2000000, maxDamage = -7000000},
		--{name = "attackplant", interval = 5000, chance = 50, range = 7, minDamage = -2000000, maxDamage = -3000000},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 2000, chance = 13, range = 7, minDamage = -500000, maxDamage = -520000},
		{name = "combat", type = COMBAT_HOLYDAMAGE, interval = 1000, chance = 30, range = 7, radius = 7, target = 1, minDamage = -10000000, maxDamage = -18000000, shootEffect = CONST_ANI_HOLY, effect = CONST_ME_HOLYAREA},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 12, length = 8, spread = 0, minDamage = -1000000, maxDamage = -2900000, effect = CONST_ME_HOLYDAMAGE},
		{name = "combat", type = COMBAT_HOLYDAMAGE, interval = 3000, chance = 10, range = 1, target = 1, minDamage = -10000000, maxDamage = -15000000, effect = CONST_ME_HOLYAREA},
}

monster.defenses = {
	defense = 55,
	armor = 55,
		{name = "combat", type = COMBAT_HEALING, interval = 2000, chance = 50, minDamage = 6000000, maxDamage = 7000000},
}

monster.immunities = {
		{type = "holy", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "small plant", chance = 10, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "KKKKSssssss!", yell = true},
		{text = "I SMELL FEEEEEAAAR!", yell = true},
		{text = "Your resistance is futile!", yell = true},
		{text = "Your soul will be mine!", yell = true},
}

mType:register(monster)
