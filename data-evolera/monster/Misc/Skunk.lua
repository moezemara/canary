local mType = Game.createMonsterType("skunk")
local monster = {}

monster.description = "a skunk"
monster.experience = 3
monster.outfit = {
	lookType = 106,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 20
monster.maxHealth = 20
monster.race = "blood"
monster.corpse = 6035
monster.speed = 120
monster.manaCost = 200

monster.changeTarget = {
	interval = 2000,
	chance = 0,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 8,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 15, attack = 4},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 2, range = 1, radius = 1, target = 1, minDamage = -1, maxDamage = -3, effect = CONST_ME_POISON},
}

monster.defenses = {
	defense = 5,
	armor = 1,
}

monster.immunities = {
		{type = "poison", condition = true},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2671, chance = 50000},
}

mType:register(monster)
