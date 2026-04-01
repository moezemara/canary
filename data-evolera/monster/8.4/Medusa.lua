local mType = Game.createMonsterType("Medusa")
local monster = {}

monster.description = "a medusa"
monster.experience = 3200000
monster.outfit = {
	lookType = 330,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 350000
monster.maxHealth = 350000
monster.race = "blood"
monster.corpse = 10524
monster.speed = 200
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 20,
}

monster.strategiesTarget = {
	nearest = 300,
	defense = 200,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 1,
	targetDistance = 1,
	runHealth = 200,
}

monster.attacks = {
		{name = "melee", interval = 2000, chance = 100, range = 1, skill = 60, attack = 17000, maxDamage = -19000},
		{name = "outfit", interval = 2300, chance = 100, range = 7, duration = 3000, effect = CONST_ME_CARNIPHILA},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1500, chance = 7000, range = 2, radius = 7, target = 1, maxDamage = -20000, effect = CONST_ME_POFF},
		{name = "speed", interval = 1450, chance = 60, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2200, chance = 70, length = 7, spread = 3, minDamage = -20000, maxDamage = -35000, effect = CONST_ME_CARNIPHILA},
}

monster.defenses = {
	defense = 45,
	armor = 30,
		{name = "combat", type = COMBAT_HEALING, interval = 2001, chance = 80, minDamage = 10000, maxDamage = 20000},
}

monster.elements = {
		{type = COMBAT_DEATHDAMAGE, percent = 50},
		{type = COMBAT_ENERGYDAMAGE, percent = 10},
		{type = COMBAT_FIREDAMAGE, percent = 20},
}

monster.voices = {
	interval = 5000,
	chance = 40,
		{text = "Are you tired or why are you moving thhat ssslow", yell = true},
		{text = "There isss no chhhanccce of essscape", yell = true},
		{text = "You will make sssuch a fine ssstatue!", yell = true},
}

monster.loot = {
	{
		id = 1987, chance = 10000,
		childs = {
			{id = 2148, chance = 10000, maxCount = 30},
			{id = 2148, chance = 10000, maxCount = 78},
			{id = 2475, chance = 3900},
			{id = 2536, chance = 4100},
		}
	},
	{id = 2143, chance = 7000, maxCount = 3},
	{id = 2148, chance = 10000, maxCount = 27},
	{id = 2148, chance = 10000, maxCount = 70},
	{id = 2152, chance = 9000, maxCount = 2},
	{id = 2476, chance = 4200},
	{id = 2477, chance = 4400},
	{id = 7413, chance = 2600},
}

mType:register(monster)
