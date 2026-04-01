local mType = Game.createMonsterType("Mutated Spider")
local monster = {}

monster.description = "a mutated spider"
monster.experience = 1750000
monster.outfit = {
	lookType = 208,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 400000
monster.maxHealth = 400000
monster.race = "venom"
monster.corpse = 5977
monster.speed = 320
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
		{name = "melee", interval = 2000, skill = 110, attack = 2000},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 3000, chance = 18, range = 7, minDamage = -12000, maxDamage = -15000, shootEffect = CONST_ANI_EARTH, effect = CONST_ME_POISON},
		{name = "speed", interval = 2000, chance = 15, range = 7, speedchange = -850, duration = 25000, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISON},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 10, range = 7, radius = 4, target = 1, shootEffect = CONST_ANI_POISON},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 12, radius = 4, target = 0, minDamage = -12000, maxDamage = -20000, shootEffect = CONST_ANI_POISON},
}

monster.defenses = {
	defense = 33,
	armor = 30,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 17, minDamage = 225, maxDamage = 275},
		{name = "speed", interval = 1000, chance = 8, speedchange = 345, duration = 6000},
}

monster.immunities = {
		{type = "earth", condition = true},
		{type = "fire", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "mutated the old widow", chance = 13, interval = 1000, max = 1},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2463, chance = 40000},
	{id = 2171, chance = 4000},
	{id = 2459, chance = 20000},
	{id = 5879, chance = 100000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2457, chance = 10000},
			{id = 2148, chance = 100000, maxCount = 40},
			{id = 2476, chance = 10000},
			{id = 2477, chance = 5000},
			{id = 2478, chance = 10000},
			{id = 2169, chance = 8000},
		}
	},
}

mType:register(monster)
