local mType = Game.createMonsterType("Gigantic Spider")
local monster = {}

monster.description = "a gigantic spider"
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
monster.health = 2100000000
monster.maxHealth = 2100000000
monster.race = "venom"
monster.corpse = 5977
monster.speed = 680
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
		{name = "melee", interval = 200, minDamage = -4000000, maxDamage = -10000000},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 17, range = 7, radius = 1, target = 1, shootEffect = CONST_ANI_POISON},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 30, range = 7, radius = 7, target = 1, minDamage = -20000000, maxDamage = -35000000, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 30, length = 8, spread = 3, minDamage = -20000000, maxDamage = -30000000, effect = CONST_ME_FIREAREA},
}

monster.defenses = {
	defense = 20,
	armor = 20,
		{name = "speed", interval = 1000, chance = 6, speedchange = 910, duration = 8000},
		{name = "combat", type = COMBAT_HEALING, interval = 2000, chance = 100, minDamage = 20000000, maxDamage = 25000000},
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = 60},
		{type = COMBAT_ICEDAMAGE, percent = 60},
}

monster.immunities = {
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "Poison Spider", chance = 30, interval = 1000, max = 1},
}

monster.loot = {
	{id = 2169, chance = 700},
	{id = 2148, chance = 100000, maxCount = 57},
	{id = 2148, chance = 100000, maxCount = 28},
	{id = 2463, chance = 4000},
	{id = 2171, chance = 400},
	{id = 5879, chance = 5000},
	{id = 2545, chance = 13000, maxCount = 12},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2148, chance = 100000, maxCount = 40},
			{id = 2457, chance = 5000},
			{id = 2476, chance = 700},
			{id = 2477, chance = 500},
			{id = 2478, chance = 10000},
			{id = 2169, chance = 800},
			{id = 7588, chance = 500},
			{id = 7901, chance = 200},
		}
	},
}

mType:register(monster)
