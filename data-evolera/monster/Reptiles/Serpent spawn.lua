local mType = Game.createMonsterType("serpent spawn")
local monster = {}

monster.description = "a serpent spawn"
monster.experience = 2000
monster.outfit = {
	lookType = 220,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 3000
monster.maxHealth = 3000
monster.race = "venom"
monster.corpse = 4323
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
	runHealth = 275,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 80, attack = 70},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 17, range = 7, target = 1, minDamage = -100, maxDamage = -300, shootEffect = CONST_ANI_POISON, effect = CONST_ME_GREENSPARK},
		{name = "outfit", interval = 1000, chance = 1, range = 7, duration = 4000, effect = CONST_ME_BLUESHIMMER},
		{name = "speed", interval = 1000, chance = 20, range = 7, radius = 4, target = 1, speedchange = -850, duration = 120000, shootEffect = CONST_ANI_POISON, effect = CONST_ME_GREENBUBBLE},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 15, length = 8, spread = 0, minDamage = -150, maxDamage = -400, effect = CONST_ME_REDNOTE},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 3000, chance = 20, length = 8, spread = 3, minDamage = -50, maxDamage = -400, effect = CONST_ME_POISON},
		{name = "outfit", interval = 1000, chance = 15, range = 7, duration = 12000, effect = CONST_ME_BLUESHIMMER},
}

monster.defenses = {
	defense = 25,
	armor = 25,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 17, minDamage = 300, maxDamage = 500},
		{name = "speed", interval = 1000, chance = 9, speedchange = 320, duration = 5000},
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = 15},
		{type = COMBAT_FIREDAMAGE, percent = -10},
		{type = COMBAT_ENERGYDAMAGE, percent = -10},
}

monster.immunities = {
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Ssssolus for the one"},
		{text = "HISSSS", yell = true},
		{text = "Tsssse one will risssse again"},
		{text = "I bring you deathhhh, mortalssss"},
}

monster.loot = {
	{id = 2182, chance = 1333},
	{id = 2195, chance = 800},
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 50},
	{id = 2476, chance = 500},
	{id = 1976, chance = 9000},
	{id = 3971, chance = 3000},
	{id = 2492, chance = 200},
	{id = 2167, chance = 3000},
	{id = 2392, chance = 300},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2148, chance = 100000, maxCount = 100},
			{id = 2033, chance = 3000},
			{id = 2182, chance = 1000},
			{id = 2796, chance = 18000},
			{id = 2177, chance = 800},
			{id = 2168, chance = 3000},
			{id = 2547, chance = 6000},
			{id = 2498, chance = 100},
			{id = 2146, chance = 6000},
			{id = 2479, chance = 600},
			{id = 2528, chance = 400},
		}
	},
}

mType:register(monster)
