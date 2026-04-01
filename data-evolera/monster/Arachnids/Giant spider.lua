local mType = Game.createMonsterType("giant spider")
local monster = {}

monster.description = "a giant spider"
monster.experience = 900
monster.outfit = {
	lookType = 38,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1300
monster.maxHealth = 1300
monster.race = "venom"
monster.corpse = 5977
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
		{name = "melee", interval = 2000, skill = 80, attack = 75},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 13, range = 7, radius = 1, target = 1, shootEffect = CONST_ANI_POISON},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 12, range = 7, target = 1, minDamage = -40, maxDamage = -70, shootEffect = CONST_ANI_POISON},
}

monster.defenses = {
	defense = 30,
	armor = 30,
		{name = "speed", interval = 1000, chance = 6, speedchange = 290, duration = 20000},
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = -10},
		{type = COMBAT_ENERGYDAMAGE, percent = 20},
		{type = COMBAT_ICEDAMAGE, percent = 20},
}

monster.immunities = {
		{type = "earth", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "poison spider", chance = 20, interval = 1000, max = 1},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 60},
	{id = 2463, chance = 4000},
	{id = 2171, chance = 800},
	{id = 2459, chance = 20000},
	{id = 5879, chance = 5000},
	{id = 7901, chance = 1777},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2545, chance = 8000, maxCount = 13},
			{id = 2148, chance = 100000, maxCount = 50},
			{id = 2457, chance = 5000},
			{id = 2476, chance = 2500},
			{id = 2477, chance = 1500},
			{id = 2478, chance = 10000},
			{id = 2169, chance = 2900},
		}
	},
}

mType:register(monster)
