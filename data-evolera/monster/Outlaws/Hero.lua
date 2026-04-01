local mType = Game.createMonsterType("hero")
local monster = {}

monster.description = "a hero"
monster.experience = 1200
monster.outfit = {
	lookType = 73,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1400
monster.maxHealth = 1400
monster.race = "blood"
monster.corpse = 6080
monster.speed = 268
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
		{name = "melee", interval = 2000, skill = 80, attack = 75},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 20, range = 7, minDamage = -20, maxDamage = -120, shootEffect = CONST_ANI_ARROW},
}

monster.defenses = {
	defense = 20,
	armor = 30,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 10, minDamage = 200, maxDamage = 350},
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = 30},
		{type = COMBAT_PHYSICALDAMAGE, percent = 25},
		{type = COMBAT_HOLYDAMAGE, percent = 25},
		{type = COMBAT_DEATHDAMAGE, percent = -20},
		{type = COMBAT_EARTHDAMAGE, percent = 50},
		{type = COMBAT_ENERGYDAMAGE, percent = 25},
		{type = COMBAT_ICEDAMAGE, percent = 15},
}

monster.immunities = {
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Let's have a fight!"},
		{text = "Welcome to my battleground."},
		{text = "Have you seen princess Lumelia?"},
		{text = "I will sing a tune at your grave."},
}

monster.loot = {
	{id = 2491, chance = 1200},
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2120, chance = 20000},
	{id = 1949, chance = 10000},
	{id = 2456, chance = 10000},
	{id = 2661, chance = 12000},
	{id = 2681, chance = 10000},
	{id = 2121, chance = 6666},
	{id = 2666, chance = 20000, maxCount = 3},
	{id = 5911, chance = 5000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2377, chance = 1500},
			{id = 2487, chance = 600},
			{id = 2392, chance = 700},
			{id = 2519, chance = 900},
			{id = 2488, chance = 800},
			{id = 2071, chance = 10000},
			{id = 2544, chance = 20000, maxCount = 13},
			{id = 2652, chance = 10000},
			{id = 2164, chance = 1000},
			{id = 7364, chance = 2000, maxCount = 8},
			{id = 2391, chance = 1333},
			{id = 2744, chance = 20000},
		}
	},
}

mType:register(monster)
