local mType = Game.createMonsterType("orc spearman")
local monster = {}

monster.description = "a orc spearman"
monster.experience = 38
monster.outfit = {
	lookType = 50,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 105
monster.maxHealth = 105
monster.race = "blood"
monster.corpse = 5996
monster.speed = 176
monster.manaCost = 310

monster.changeTarget = {
	interval = 5000,
	chance = 8,
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
	targetDistance = 4,
	runHealth = 10,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 19, attack = 17},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 7, range = 7, minDamage = -16, maxDamage = -40, shootEffect = CONST_ANI_SPEAR},
}

monster.defenses = {
	defense = 12,
	armor = 6,
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Ugaar!"},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 80000, maxCount = 10},
	{id = 2666, chance = 80000, maxCount = 2},
	{id = 2468, chance = 10000},
	{id = 2220, chance = 10000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2420, chance = 10000},
			{id = 2389, chance = 6666},
		}
	},
}

mType:register(monster)
