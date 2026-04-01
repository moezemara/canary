local mType = Game.createMonsterType("Pedofiler")
local monster = {}

monster.description = "a Pedofiler"
monster.experience = 3700
monster.outfit = {
	lookType = 238,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 250000000
monster.maxHealth = 250000000
monster.race = "venom"
monster.corpse = 6532
monster.speed = 400
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
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 800, minDamage = -3000000, maxDamage = -3700000},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 800, chance = 100, range = 7, minDamage = -3000000, maxDamage = -3700000, shootEffect = CONST_ANI_EARTH},
}

monster.defenses = {
	defense = 15,
	armor = 15,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 50, minDamage = 1000000, maxDamage = 3000000},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Blubb.."},
}

monster.loot = {
	{id = 2157, chance = 100000, maxCount = 4},
}

mType:register(monster)
