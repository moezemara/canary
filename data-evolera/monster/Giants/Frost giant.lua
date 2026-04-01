local mType = Game.createMonsterType("Frost Giant")
local monster = {}

monster.description = "a frost giant"
monster.experience = 150
monster.outfit = {
	lookType = 257,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 270
monster.maxHealth = 270
monster.race = "undead"
monster.corpse = 7330
monster.speed = 235
monster.manaCost = 490

monster.changeTarget = {
	interval = 2000,
	chance = 5,
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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 80,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 42, attack = 42},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 14, range = 7, target = 1, minDamage = 0, maxDamage = -90, shootEffect = CONST_ANI_LARGEROCK},
}

monster.defenses = {
	defense = 23,
	armor = 22,
}

monster.immunities = {
		{type = "ice", condition = true},
}

monster.voices = {
	interval = 3500,
	chance = 5,
		{text = "Hmm Humansoup"},
		{text = "Stand still ya tasy snack!"},
		{text = "Joh Thun!"},
		{text = "Brore Smode!"},
		{text = "Horre Sjan Flan!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 10},
	{id = 2406, chance = 25000},
	{id = 2381, chance = 1955},
	{id = 7441, chance = 3444},
	{id = 2510, chance = 5333},
	{id = 7290, chance = 1666},
	{id = 2666, chance = 33333, maxCount = 2},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2513, chance = 2500},
			{id = 2490, chance = 2777},
			{id = 2209, chance = 2055},
			{id = 2671, chance = 33333, maxCount = 2},
		}
	},
}

mType:register(monster)
