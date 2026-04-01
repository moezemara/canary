local mType = Game.createMonsterType("General Murius")
local monster = {}

monster.description = "the general Murius"
monster.experience = 300
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
monster.health = 550
monster.maxHealth = 550
monster.race = "blood"
monster.corpse = 5983
monster.speed = 240
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
		{name = "melee", interval = 2000, skill = 70, attack = 55},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 12, range = 7, minDamage = -50, maxDamage = -120, shootEffect = CONST_ANI_BOLT},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 10, radius = 3, target = 0, minDamage = -50, maxDamage = -80, effect = CONST_ME_BLACKSPARK},
}

monster.defenses = {
	defense = 22,
	armor = 16,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 15, minDamage = 50, maxDamage = 100},
}

monster.immunities = {
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "Minotaur Archer", chance = 15, interval = 1000, max = 1},
		{name = "Minotaur Guard", chance = 12, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Feel the power of the Mooh'Tah!"},
		{text = "You will get what you deserve!"},
		{text = "For the king!"},
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
	{
		id = 1988, chance = 2857,
		childs = {
			{id = 2148, chance = 2857},
		}
	},
	{
		id = 1987, chance = 100000,
		childs = {
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
