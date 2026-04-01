local mType = Game.createMonsterType("Marian")
local monster = {}

monster.description = "an Marian"
monster.experience = 0
monster.outfit = {
	lookType = 331,
	lookHead = 97,
	lookBody = 97,
	lookLegs = 97,
	lookFeet = 97,
	lookAddons = 1,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1950000000
monster.maxHealth = 1950000000
monster.race = "blood"
monster.corpse = 2317
monster.speed = 300
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 30,
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
	canPushCreatures = true,
	staticAttackChance = 95,
	targetDistance = 0,
	runHealth = 1150,
}

monster.attacks = {
		{name = "melee", interval = 1000, minDamage = -12000000, maxDamage = -15000000},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 50, length = 4, spread = 0, minDamage = -8000000, maxDamage = -10000000, effect = CONST_ME_PURPLEENERGY},
		{name = "combat", type = COMBAT_DROWNDAMAGE, interval = 1000, chance = 100, range = 5, target = 1, minDamage = -5500000, maxDamage = -5900000, effect = CONST_ME_BLUEBUBBLE},
}

monster.defenses = {
	defense = 25,
	armor = 25,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 25, minDamage = 25000000, maxDamage = 35000000},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Feel the power of my eyebrows!"},
		{text = "You shall suffer from the sight of my eyebrows!"},
		{text = "It's time for you to see what real eyebrows look like!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 70},
}

mType:register(monster)
