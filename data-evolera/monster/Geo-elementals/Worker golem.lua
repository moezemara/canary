local mType = Game.createMonsterType("Worker Golem")
local monster = {}

monster.description = "a worker golem"
monster.experience = 1250
monster.outfit = {
	lookType = 304,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1400
monster.maxHealth = 1400
monster.race = "energy"
monster.corpse = 9801
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
		{name = "melee", interval = 2000, minDamage = -0, maxDamage = -230},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 14, range = 7, minDamage = -0, maxDamage = -95, shootEffect = CONST_ANI_EXPLOSION},
}

monster.defenses = {
	defense = 45,
	armor = 40,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 20, minDamage = 100, maxDamage = 220},
}

monster.elements = {
		{type = COMBAT_EARTHDAMAGE, percent = 50},
		{type = COMBAT_HOLYDAMAGE, percent = 30},
		{type = COMBAT_FIREDAMAGE, percent = -10},
		{type = COMBAT_ENERGYDAMAGE, percent = -5},
		{type = COMBAT_PHYSICALDAMAGE, percent = 40},
		{type = COMBAT_ICEDAMAGE, percent = 25},
		{type = COMBAT_DEATHDAMAGE, percent = 30},
}

monster.immunities = {
		{type = "invisible", condition = true},
		{type = "paralyze", condition = true},
}

monster.voices = {
	interval = 2500,
	chance = 10,
		{text = "INTRUDER ALARM!"},
		{text = "klonk klonk klonk"},
		{text = "Rrrtttarrrttarrrtta"},
		{text = "Awaiting orders."},
		{text = "Secret objective complete."},
}

monster.loot = {
	{id = 8309, chance = 1500, maxCount = 5},
	{id = 9690, chance = 700, maxCount = 2},
	{id = 2148, chance = 100000, maxCount = 75},
	{id = 2148, chance = 100000, maxCount = 75},
	{id = 5880, chance = 1500},
	{id = 7591, chance = 900},
	{id = 8472, chance = 900},
	{id = 7452, chance = 700},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2145, chance = 1500, maxCount = 2},
			{id = 7439, chance = 700},
			{id = 2177, chance = 800},
			{id = 9811, chance = 700},
			{id = 9808, chance = 700},
			{id = 2164, chance = 750},
			{id = 2391, chance = 700},
			{id = 9976, chance = 700},
			{id = 7428, chance = 200},
			{id = 2207, chance = 300},
		}
	},
}

mType:register(monster)
