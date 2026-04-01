local mType = Game.createMonsterType("Mercenary")
local monster = {}

monster.description = "a player killer"
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
monster.corpse = 3128
monster.speed = 390
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 3,
}

monster.strategiesTarget = {
	nearest = 80,
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
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 88, attack = 80},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 15, range = 7, minDamage = -145, maxDamage = -185, shootEffect = CONST_ANI_SPEAR},
}

monster.defenses = {
	defense = 60,
	armor = 42,
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
	{id = 2417, chance = 7000},
	{id = 2195, chance = 500},
	{id = 2478, chance = 13000},
	{id = 2691, chance = 20000, maxCount = 2},
	{id = 2489, chance = 2000},
	{id = 2490, chance = 2000},
	{id = 2414, chance = 300},
	{id = 2148, chance = 33300, maxCount = 60},
	{id = 2148, chance = 22200, maxCount = 90},
	{id = 2381, chance = 13000},
	{id = 2476, chance = 1000},
	{id = 2430, chance = 2500},
	{id = 2477, chance = 1000},
	{id = 2463, chance = 10000},
	{id = 2120, chance = 15000},
	{id = 2133, chance = 800},
	{id = 2389, chance = 30000, maxCount = 3},
	{id = 2457, chance = 10000},
	{id = 2377, chance = 10000},
	{id = 2475, chance = 5000},
}

mType:register(monster)
