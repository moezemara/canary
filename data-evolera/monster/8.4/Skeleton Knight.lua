local mType = Game.createMonsterType("Skeleton Knight")
local monster = {}

monster.description = "a Skeleton Knight"
monster.experience = 24000000000
monster.outfit = {
	lookType = 306,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 11250000
monster.maxHealth = 11250000
monster.race = "undead"
monster.corpse = 9823
monster.speed = 270
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
		{name = "melee", interval = 2000, minDamage = -80000, maxDamage = -130000},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 14, range = 7, minDamage = -50000, maxDamage = -60000, shootEffect = CONST_ANI_WHIRLWINDSWORD},
}

monster.defenses = {
	defense = 45,
	armor = 40,
		{name = "invisible", interval = 5000, chance = 50, duration = 5000},
}

monster.elements = {
		{type = COMBAT_EARTHDAMAGE, percent = -5},
		{type = COMBAT_HOLYDAMAGE, percent = 10},
		{type = COMBAT_FIREDAMAGE, percent = 80},
		{type = COMBAT_ENERGYDAMAGE, percent = 20},
		{type = COMBAT_DEATHDAMAGE, percent = -5},
}

monster.immunities = {
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 2500,
	chance = 10,
		{text = "Let's battle it out in a duel!"},
		{text = "Bring it!"},
		{text = "I'll fight here in eternity and beyond."},
		{text = "I will not give up!"},
		{text = "Another foolish adventurer who tries to beat me."},
}

monster.loot = {
	{id = 9971, chance = 100000, maxCount = 4},
	{id = 9971, chance = 100000, maxCount = 0},
	{id = 2399, chance = 4000, maxCount = 17},
	{id = 2647, chance = 3500},
	{id = 2465, chance = 4000},
	{id = 2666, chance = 10000, maxCount = 2},
	{id = 8872, chance = 1500},
	{id = 2497, chance = 800},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 3965, chance = 4000},
			{id = 2419, chance = 4000},
			{id = 2478, chance = 3000},
			{id = 2463, chance = 2500},
			{id = 2200, chance = 3000},
			{id = 2377, chance = 2500},
			{id = 2165, chance = 1300},
			{id = 2490, chance = 1600},
			{id = 2430, chance = 900},
			{id = 3962, chance = 500},
			{id = 5885, chance = 400},
			{id = 7454, chance = 300},
			{id = 7389, chance = 200},
		}
	},
}

mType:register(monster)
