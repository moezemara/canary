local mType = Game.createMonsterType("behemoth")
local monster = {}

monster.description = "a behemoth"
monster.experience = 2500
monster.outfit = {
	lookType = 55,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 4000
monster.maxHealth = 4000
monster.race = "blood"
monster.corpse = 5999
monster.speed = 280
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
	staticAttackChance = 80,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 85, attack = 95},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 15, range = 7, minDamage = -100, maxDamage = -185, shootEffect = CONST_ANI_LARGEROCK},
}

monster.defenses = {
	defense = 50,
	armor = 50,
		{name = "speed", interval = 1000, chance = 7, speedchange = 320, duration = 4000},
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 10},
		{type = COMBAT_EARTHDAMAGE, percent = 80},
		{type = COMBAT_ICEDAMAGE, percent = -10},
		{type = COMBAT_HOLYDAMAGE, percent = 30},
		{type = COMBAT_DEATHDAMAGE, percent = -5},
		{type = COMBAT_FIREDAMAGE, percent = 30},
}

monster.immunities = {
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "You're so little!"},
		{text = "Human flesh - delicious!"},
		{text = "Crush the intruders!", yell = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 70},
	{id = 2671, chance = 10000, maxCount = 3},
	{id = 2023, chance = 11000},
	{id = 7368, chance = 1200, maxCount = 4},
	{id = 2174, chance = 800},
	{id = 2387, chance = 2000},
	{id = 2377, chance = 4000},
	{id = 2231, chance = 7000},
	{id = 5930, chance = 2500},
	{id = 2393, chance = 688},
	{id = 2454, chance = 488},
	{id = 2150, chance = 4000, maxCount = 2},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2463, chance = 2000},
			{id = 2553, chance = 6000},
			{id = 2666, chance = 40000, maxCount = 6},
			{id = 2489, chance = 3000},
			{id = 2125, chance = 300},
			{id = 2148, chance = 100000, maxCount = 40},
			{id = 2416, chance = 15000},
			{id = 2645, chance = 400},
			{id = 2188, chance = 1000},
			{id = 2161, chance = 3333},
			{id = 5930, chance = 1500},
			{id = 5893, chance = 1200},
		}
	},
}

mType:register(monster)
