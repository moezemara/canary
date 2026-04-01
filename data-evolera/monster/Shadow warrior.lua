local mType = Game.createMonsterType("Shadow Warrior")
local monster = {}

monster.description = "a shadow warrior"
monster.experience = 170000
monster.outfit = {
	lookType = 134,
	lookHead = 0,
	lookBody = 114,
	lookLegs = 114,
	lookFeet = 0,
	lookAddons = 3,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 120000
monster.maxHealth = 120000
monster.race = "blood"
monster.corpse = 6080
monster.speed = 500
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
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 1000, minDamage = -200, maxDamage = -5000},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, minDamage = -200, maxDamage = -5000},
		{name = "melee", interval = 2000, minDamage = -4000, maxDamage = -5000},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 25, range = 7, minDamage = -2000, maxDamage = -10200, shootEffect = CONST_ANI_ARROW},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 25, range = 1, minDamage = -600, maxDamage = -4000, effect = CONST_ME_REDSPARK},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 25, range = 7, minDamage = -3500, maxDamage = -5000, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISON},
}

monster.defenses = {
	defense = 20,
	armor = 30,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 10, minDamage = 1000, maxDamage = 3000},
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = 25},
		{type = COMBAT_ICEDAMAGE, percent = 20},
		{type = COMBAT_FIREDAMAGE, percent = 20},
		{type = COMBAT_HOLYDAMAGE, percent = 20},
		{type = COMBAT_EARTHDAMAGE, percent = 20},
		{type = COMBAT_PHYSICALDAMAGE, percent = 15},
		{type = COMBAT_DEATHDAMAGE, percent = 50},
}

monster.immunities = {
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.loot = {
	{id = 2491, chance = 1200},
	{id = 2393, chance = 1428},
	{id = 2514, chance = 500},
	{id = 2432, chance = 1200},
	{id = 2472, chance = 130},
	{id = 5906, chance = 1000},
	{id = 5954, chance = 1000},
	{id = 2164, chance = 200},
	{id = 2176, chance = 3000},
	{id = 1982, chance = 1300},
	{id = 7368, chance = 1200, maxCount = 4},
	{id = 2165, chance = 1400},
	{id = 2120, chance = 20000},
	{id = 1949, chance = 10000},
	{id = 2456, chance = 10000},
	{id = 2661, chance = 12000},
	{id = 2681, chance = 10000},
	{id = 2121, chance = 6666},
	{id = 2666, chance = 20000, maxCount = 3},
	{id = 5911, chance = 5000},
	{
		id = 2004, chance = 100000,
		childs = {
			{id = 2214, chance = 500},
			{id = 2396, chance = 600},
			{id = 2179, chance = 1100},
			{id = 2795, chance = 20000, maxCount = 6},
			{id = 2678, chance = 10000, maxCount = 3},
			{id = 2151, chance = 4000, maxCount = 4},
			{id = 2462, chance = 1200},
			{id = 2149, chance = 11000, maxCount = 3},
			{id = 2171, chance = 800},
			{id = 2387, chance = 20000},
			{id = 2418, chance = 1500},
			{id = 7382, chance = 4100},
			{id = 2377, chance = 3333},
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
