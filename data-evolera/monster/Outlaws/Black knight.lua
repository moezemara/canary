local mType = Game.createMonsterType("black knight")
local monster = {}

monster.description = "a black knight"
monster.experience = 1600
monster.outfit = {
	lookType = 131,
	lookHead = 95,
	lookBody = 95,
	lookLegs = 95,
	lookFeet = 95,
	lookAddons = 3,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1800
monster.maxHealth = 1800
monster.race = "blood"
monster.corpse = 6080
monster.speed = 340
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
		{name = "melee", interval = 2000, skill = 80, attack = 70},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 20, range = 7, minDamage = -65, maxDamage = -145, shootEffect = CONST_ANI_SPEAR},
		{name = "melee", interval = 2000, chance = 15, range = 7, radius = 3, target = 0, minDamage = -80, maxDamage = -155, effect = CONST_ME_BLACKSPARK},
}

monster.defenses = {
	defense = 30,
	armor = 25,
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = 95},
		{type = COMBAT_ENERGYDAMAGE, percent = 80},
		{type = COMBAT_DEATHDAMAGE, percent = 20},
		{type = COMBAT_PHYSICALDAMAGE, percent = 25},
		{type = COMBAT_HOLYDAMAGE, percent = -10},
}

monster.immunities = {
		{type = "energy", condition = true},
		{type = "fire", condition = true},
		{type = "poison", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "MINE!", yell = true},
		{text = "NO PRISONERS!", yell = true},
		{text = "NO MERCY!", yell = true},
		{text = "By Bolg's Blood!"},
		{text = "You're no match for me!"},
}

monster.loot = {
	{id = 2457, chance = 10000},
	{id = 2417, chance = 7000},
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2476, chance = 800},
	{id = 2489, chance = 1428},
	{id = 2490, chance = 6666},
	{id = 2381, chance = 9000},
	{id = 2389, chance = 20000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2477, chance = 1000},
			{id = 2691, chance = 20000, maxCount = 2},
			{id = 2478, chance = 13000},
			{id = 2475, chance = 2000},
			{id = 2463, chance = 2500},
			{id = 2148, chance = 100000, maxCount = 15},
			{id = 2120, chance = 20000},
			{id = 2387, chance = 6666},
			{id = 2377, chance = 2857},
			{id = 2430, chance = 1333},
			{id = 2414, chance = 909},
			{id = 2195, chance = 555},
			{id = 2133, chance = 800},
		}
	},
}

mType:register(monster)
