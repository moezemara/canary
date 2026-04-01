local mType = Game.createMonsterType("thalas")
local monster = {}

monster.description = "a thalas"
monster.experience = 2950
monster.outfit = {
	lookType = 86,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 4100
monster.maxHealth = 4100
monster.race = "venom"
monster.corpse = 6025
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
		{name = "melee", interval = 2000, skill = 110, attack = 115},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 11, range = 7, minDamage = -300, maxDamage = -650, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISON},
		{name = "speed", interval = 1000, chance = 13, range = 7, speedchange = -1000, duration = 20000, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 11, length = 8, spread = 3, minDamage = -250, maxDamage = -892, effect = CONST_ME_POISON},
}

monster.defenses = {
	defense = 30,
	armor = 20,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 20, minDamage = 150, maxDamage = 450},
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = -12},
}

monster.summons = {
		{name = "slime", chance = 100, interval = 10000, max = 1},
		{name = "slime", chance = 100, interval = 10000, max = 1},
		{name = "slime", chance = 100, interval = 10000, max = 1},
		{name = "slime", chance = 100, interval = 10000, max = 1},
		{name = "slime", chance = 100, interval = 10000, max = 1},
		{name = "slime", chance = 100, interval = 10000, max = 1},
		{name = "slime", chance = 100, interval = 10000, max = 1},
		{name = "slime", chance = 100, interval = 10000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "You will become a feast for my maggots."},
		{text = "Death and decay!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2351, chance = 100000},
	{id = 2409, chance = 4444},
	{id = 2148, chance = 100000, maxCount = 100},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2148, chance = 100000, maxCount = 70},
			{id = 2149, chance = 6000, maxCount = 3},
			{id = 2451, chance = 1200},
			{id = 2255, chance = 2222},
			{id = 7591, chance = 4000},
		}
	},
}

mType:register(monster)
