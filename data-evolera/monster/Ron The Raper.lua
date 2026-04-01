local mType = Game.createMonsterType("Ron the Raper")
local monster = {}

monster.description = "Ron the Raper"
monster.experience = 1390000000
monster.outfit = {
	lookType = 151,
	lookHead = 95,
	lookBody = 94,
	lookLegs = 115,
	lookFeet = 115,
	lookAddons = 1,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 35000000
monster.maxHealth = 35000000
monster.race = "blood"
monster.corpse = 6080
monster.speed = 300
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8,
}

monster.strategiesTarget = {
	nearest = 100,
	defense = 25,
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
		{name = "melee", interval = 2000, skill = 90, attack = 500000},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 17, range = 7, minDamage = -1000000, maxDamage = -1000000, shootEffect = CONST_ANI_REDSTAR},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 12, radius = 8, target = 0, minDamage = -500000, maxDamage = -1000000, effect = CONST_ME_WHITENOTE},
}

monster.defenses = {
	defense = 20,
	armor = 25,
}

monster.immunities = {
		{type = "invisible", condition = true},
}

monster.loot = {
	{id = 2148, chance = 40000, maxCount = 50},
	{id = 2229, chance = 40000, maxCount = 2},
	{id = 6101, chance = 100000},
	{id = 2387, chance = 9999},
	{id = 2463, chance = 5555},
	{id = 2379, chance = 100000},
	{id = 2476, chance = 9000},
}

mType:register(monster)
