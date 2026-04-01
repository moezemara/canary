local mType = Game.createMonsterType("pirate Buccaneer")
local monster = {}

monster.description = "a pirate buccaneer"
monster.experience = 250
monster.outfit = {
	lookType = 97,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 425
monster.maxHealth = 425
monster.race = "blood"
monster.corpse = 6080
monster.speed = 230
monster.manaCost = 595

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
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 50,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 64, attack = 66},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 3000, chance = 17, range = 4, minDamage = -0, maxDamage = -80, shootEffect = CONST_ANI_THROWINGKNIFE},
}

monster.defenses = {
	defense = 23,
	armor = 25,
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Give up!"},
}

monster.loot = {
	{id = 2148, chance = 40000, maxCount = 43},
	{id = 2050, chance = 6666},
	{id = 2385, chance = 2057},
	{id = 2463, chance = 1000},
	{id = 2238, chance = 10045},
	{id = 6095, chance = 5000},
	{id = 5553, chance = 1666},
	{
		id = 5926, chance = 100000,
		childs = {
			{id = 5091, chance = 1666},
			{id = 5792, chance = 3333},
			{id = 2376, chance = 6666},
			{id = 6126, chance = 5000},
			{id = 6098, chance = 5000},
			{id = 6097, chance = 5000},
		}
	},
}

mType:register(monster)
