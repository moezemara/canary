local mType = Game.createMonsterType("Multiwinged Bat")
local monster = {}

monster.description = "a Multiwinged Bat"
monster.experience = 615
monster.outfit = {
	lookType = 307,
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
monster.race = "blood"
monster.corpse = 9829
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
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 1000, minDamage = -9000000, maxDamage = -10000000},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 50, range = 7, minDamage = -5000000, maxDamage = -6000000, shootEffect = CONST_ANI_POISON},
		{name = "combat", type = COMBAT_DROWNDAMAGE, interval = 1000, chance = 50, radius = 6, target = 0, minDamage = -5000000, maxDamage = -6000000, effect = CONST_ME_WHITENOTE},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 1000, chance = 50, length = 8, spread = 3, minDamage = -5000000, maxDamage = -6000000, effect = CONST_ME_POISON},
}

monster.defenses = {
	defense = 30,
	armor = 30,
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 50},
}

mType:register(monster)
