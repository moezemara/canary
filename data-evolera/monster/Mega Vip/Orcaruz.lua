local mType = Game.createMonsterType("Orcaruz")
local monster = {}

monster.description = "a orcaruz"
monster.experience = 670
monster.outfit = {
	lookType = 2,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 48500000
monster.maxHealth = 48500000
monster.race = "blood"
monster.corpse = 6008
monster.speed = 800
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
		{name = "melee", interval = 2000, skill = 65, attack = 750000},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 10000, chance = 25, range = 7, minDamage = -1000000, maxDamage = -1200000, shootEffect = CONST_ANI_THROWINGSTAR},
}

monster.defenses = {
	defense = 35,
	armor = 22,
		{name = "invisible", interval = 1000, chance = 4, duration = 2000},
}

monster.immunities = {
		{type = "fire", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Ranat Ulderek!"},
		{text = "Orc buta bana!"},
		{text = "Ikem rambo zambo!"},
		{text = "Futchi maruk buta!"},
}

monster.loot = {
	{id = 2148, chance = 50000, maxCount = 70},
	{id = 2666, chance = 20000, maxCount = 3},
	{id = 2667, chance = 6667},
	{id = 2392, chance = 1538},
	{id = 2647, chance = 2222},
	{id = 2463, chance = 1333},
	{id = 2399, chance = 3333, maxCount = 18},
	{id = 2428, chance = 2000},
	{
		id = 1988, chance = 100000,
		childs = {
			{id = 2478, chance = 3333},
			{id = 2165, chance = 1333},
			{id = 2200, chance = 2000},
			{id = 2490, chance = 2500},
			{id = 2377, chance = 1818},
			{id = 2434, chance = 833},
			{id = 2497, chance = 667},
			{id = 2179, chance = 556},
			{id = 2499, chance = 333},
			{id = 2500, chance = 250},
			{id = 2537, chance = 200},
		}
	},
}

mType:register(monster)
