local mType = Game.createMonsterType("The Horned Fox")
local monster = {}

monster.description = "the Horned Fox"
monster.experience = 200
monster.outfit = {
	lookType = 202,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 265
monster.maxHealth = 265
monster.race = "blood"
monster.corpse = 5983
monster.speed = 210
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8,
}

monster.strategiesTarget = {
	nearest = 70,
	defense = 10,
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
		{name = "melee", interval = 2000, skill = 54, attack = 38},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 25, range = 7, minDamage = -50, maxDamage = -120, shootEffect = CONST_ANI_BOLT},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 17, range = 7, minDamage = -50, maxDamage = -120, shootEffect = CONST_ANI_BOLT},
}

monster.defenses = {
	defense = 16,
	armor = 17,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 15, minDamage = 25, maxDamage = 75},
		{name = "invisible", interval = 1000, chance = 10, duration = 2000},
}

monster.immunities = {
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "minotaur archer", chance = 13, interval = 1000, max = 1},
		{name = "minotaur guard", chance = 13, interval = 1000, max = 1},
		{name = "minotaur mage", chance = 13, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "You will never get me!"},
		{text = "I'll be back!"},
		{text = "Catch me, if you can!"},
		{text = "Help me, boys!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 30},
	{id = 2410, chance = 50000, maxCount = 2},
	{id = 2419, chance = 10000},
	{id = 2510, chance = 5000},
	{id = 2667, chance = 20000},
	{id = 2647, chance = 1818},
	{id = 2413, chance = 2857},
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 5804, chance = 100000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2189, chance = 1333},
			{id = 2207, chance = 2000},
			{id = 2666, chance = 33333, maxCount = 2},
			{id = 2379, chance = 6666},
			{id = 2475, chance = 1000},
			{id = 2397, chance = 10000},
			{id = 2652, chance = 2500},
			{id = 2478, chance = 2857},
			{id = 2463, chance = 1818},
		}
	},
}

mType:register(monster)
