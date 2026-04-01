local mType = Game.createMonsterType("orc leader")
local monster = {}

monster.description = "a orc leader"
monster.experience = 270
monster.outfit = {
	lookType = 59,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 450
monster.maxHealth = 450
monster.race = "blood"
monster.corpse = 6001
monster.speed = 230
monster.manaCost = 640

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
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 52, attack = 48},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 17, range = 7, minDamage = -50, maxDamage = -70, shootEffect = CONST_ANI_THROWINGKNIFE},
}

monster.defenses = {
	defense = 30,
	armor = 20,
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
		{text = "Ulderek futgyr human!"},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 30},
	{id = 2410, chance = 50000, maxCount = 2},
	{id = 2419, chance = 10000},
	{id = 2510, chance = 5000},
	{id = 2667, chance = 20000},
	{id = 2647, chance = 1818},
	{id = 2413, chance = 2857},
	{
		id = 1988, chance = 20000,
		childs = {
			{id = 2148, chance = 2857},
		}
	},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2207, chance = 2000},
			{id = 7378, chance = 2000, maxCount = 2},
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
