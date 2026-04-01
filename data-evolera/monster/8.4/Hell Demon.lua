local mType = Game.createMonsterType("Hell Demon")
local monster = {}

monster.description = "a hell demon"
monster.experience = 220000000
monster.outfit = {
	lookType = 35,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 8000000
monster.maxHealth = 8000000
monster.race = "fire"
monster.corpse = 5995
monster.speed = 490
monster.manaCost = 10000

monster.changeTarget = {
	interval = 5000,
	chance = 8,
}

monster.strategiesTarget = {
	nearest = 90,
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
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 120, attack = 50000},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 2000, chance = 13, range = 7, minDamage = 10000, maxDamage = -20000},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 30, range = 7, radius = 7, target = 1, minDamage = -5000, maxDamage = -6000, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 12, range = 7, radius = 1, target = 1, shootEffect = CONST_ANI_FIRE},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 12, length = 8, spread = 0, minDamage = -3000, maxDamage = -10000, effect = CONST_ME_PURPLEENERGY},
		{name = "speed", interval = 2000, chance = 15, target = 1, speedchange = -750, duration = 3000, shootEffect = CONST_ANI_SUDDENDEATH},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 3000, chance = 10, range = 1, target = 1, minDamage = -2100, maxDamage = -3900, effect = CONST_ME_PURPLEENERGY},
}

monster.defenses = {
	defense = 55,
	armor = 55,
		{name = "combat", type = COMBAT_HEALING, interval = 2000, chance = 15, minDamage = 1000, maxDamage = 2000},
		{name = "speed", interval = 1000, chance = 8, speedchange = 290, duration = 5000},
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 25},
		{type = COMBAT_ENERGYDAMAGE, percent = 80},
		{type = COMBAT_EARTHDAMAGE, percent = 80},
		{type = COMBAT_ICEDAMAGE, percent = -15},
		{type = COMBAT_HOLYDAMAGE, percent = -15},
		{type = COMBAT_DEATHDAMAGE, percent = 20},
}

monster.immunities = {
		{type = "fire", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "Mutated Rat", chance = 8, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "MUHAHAHAHA!", yell = true},
		{text = "I SMELL FEEEEEAAAR!", yell = true},
		{text = "CHAMEK ATH UTHUL ARAK!", yell = true},
		{text = "Your resistance is futile!"},
		{text = "Your soul will be mine!"},
}

monster.loot = {
	{id = 9971, chance = 100000, maxCount = 3},
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2152, chance = 33333, maxCount = 3},
	{id = 2514, chance = 1900},
	{id = 2472, chance = 1100},
	{id = 5906, chance = 2000},
	{id = 5954, chance = 2345},
	{id = 2164, chance = 2100},
	{id = 2176, chance = 3500},
	{id = 1982, chance = 1300},
	{id = 2165, chance = 2300},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2393, chance = 3300},
			{id = 2432, chance = 3800},
			{id = 2214, chance = 2222},
			{id = 2396, chance = 2600},
			{id = 2179, chance = 1100},
			{id = 2795, chance = 16000, maxCount = 6},
			{id = 2678, chance = 12000, maxCount = 3},
			{id = 2148, chance = 100000, maxCount = 100},
			{id = 2151, chance = 5500, maxCount = 4},
			{id = 2462, chance = 3200},
			{id = 2149, chance = 11000, maxCount = 3},
			{id = 2171, chance = 6700},
			{id = 2387, chance = 32000},
			{id = 7382, chance = 1100},
			{id = 7393, chance = 1700},
			{id = 2418, chance = 1500},
			{id = 2377, chance = 6666},
		}
	},
}

mType:register(monster)
