local mType = Game.createMonsterType("jadensmith")
local monster = {}

monster.description = "a jadensmith"
monster.experience = 4500
monster.outfit = {
	lookType = 247,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1460000000
monster.maxHealth = 1460000000
monster.race = "venom"
monster.corpse = 6516
monster.speed = 500
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8,
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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 700,
}

monster.attacks = {
		{name = "melee", interval = 1000, minDamage = -7000000, maxDamage = -8500000},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 100, radius = 4, target = 0, minDamage = -7000000, maxDamage = -8000000, effect = CONST_ME_POISON},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 80, length = 4, spread = 3, minDamage = -7000000, maxDamage = -8000000, effect = CONST_ME_YELLOWBUBBLE},
}

monster.defenses = {
	defense = 55,
	armor = 55,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 35, minDamage = 10000000, maxDamage = 10000000},
		{name = "speed", interval = 2000, chance = 30, speedchange = 600, duration = 7000},
}

monster.voices = {
	interval = 3000,
	chance = 30,
		{text = "You are looking a bit feverish today!"},
		{text = "Hachoo!"},
		{text = "Cough Cough!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
}

mType:register(monster)
