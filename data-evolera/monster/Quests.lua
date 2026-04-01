local mType = Game.createMonsterType("Quests")
local monster = {}

monster.description = "a quests"
monster.experience = 0
monster.outfit = {
	lookType = 0,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 28875000
monster.maxHealth = 28875000
monster.race = "blood"
monster.corpse = 6080
monster.speed = 730
monster.manaCost = 775

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
	convinceable = true,
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
		{name = "melee", interval = 200, skill = 70, attack = 200000},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 3000, chance = 25, range = 7, minDamage = -100000, maxDamage = -200000, shootEffect = CONST_ANI_THROWINGSTAR},
		{name = "melee", interval = 1000, chance = 30, range = 7, radius = 3, target = 0, minDamage = -100000, maxDamage = -200000, effect = CONST_ME_REDNOTE},
}

monster.defenses = {
	defense = 20,
	armor = 25,
}

monster.immunities = {
		{type = "invisible", condition = true},
}

monster.loot = {
	{id = 2148, chance = 50000, maxCount = 80},
	{id = 2385, chance = 9000},
	{id = 2489, chance = 1333},
	{id = 2521, chance = 1400},
	{id = 6096, chance = 1000},
	{id = 6095, chance = 2500},
	{
		id = 5926, chance = 100000,
		childs = {
			{id = 5091, chance = 1666},
			{id = 5462, chance = 450},
			{id = 5792, chance = 3333},
			{id = 2376, chance = 5555},
			{id = 6098, chance = 5000},
		}
	},
}

mType:register(monster)
