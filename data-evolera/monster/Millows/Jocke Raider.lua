local mType = Game.createMonsterType("Jocke Raider")
local monster = {}

monster.description = "a jocke raider"
monster.experience = 800
monster.outfit = {
	lookType = 299,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 660000000
monster.maxHealth = 660000000
monster.race = "venom"
monster.corpse = 8951
monster.speed = 600
monster.manaCost = 0

monster.changeTarget = {
	interval = 60000,
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
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 83,
	targetDistance = 1,
	runHealth = 1,
}

monster.attacks = {
		{name = "melee", interval = 1000, minDamage = -4000000, maxDamage = -5000000},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 50, target = -1500000, minDamage = -90, maxDamage = -1000000, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 50, radius = 3, target = 0, minDamage = -1000000, maxDamage = -1500000, effect = CONST_ME_STONES},
}

monster.defenses = {
	defense = 15,
	armor = 10,
		{name = "haste", interval = 10000, chance = 40},
		{name = "combat", type = COMBAT_HEALING, interval = 5000, chance = 60, minDamage = 50000000, maxDamage = 50000000},
}

monster.voices = {
	interval = 2000,
	chance = 5,
		{text = "Tchhh!"},
		{text = "Slurp!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 121},
}

mType:register(monster)
