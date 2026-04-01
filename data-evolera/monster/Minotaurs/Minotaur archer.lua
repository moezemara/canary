local mType = Game.createMonsterType("minotaur archer")
local monster = {}

monster.description = "a minotaur archer"
monster.experience = 65
monster.outfit = {
	lookType = 24,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 100
monster.maxHealth = 100
monster.race = "blood"
monster.corpse = 5982
monster.speed = 170
monster.manaCost = 390

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
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 10,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 20, attack = 15},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 34, range = 7, minDamage = -45, maxDamage = -85, shootEffect = CONST_ANI_BOLT},
}

monster.defenses = {
	defense = 8,
	armor = 7,
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Ruan Wihmpy!"},
		{text = "Kaplar!"},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 28},
	{id = 2543, chance = 70000, maxCount = 18},
	{id = 2666, chance = 50000, maxCount = 3},
	{id = 2483, chance = 10000},
	{id = 2481, chance = 6666},
	{id = 5878, chance = 5000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2455, chance = 6666},
			{id = 2465, chance = 5000},
			{id = 2464, chance = 10000},
			{id = 2648, chance = 4000},
			{id = 2458, chance = 10000},
		}
	},
}

mType:register(monster)
