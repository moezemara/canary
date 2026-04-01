local mType = Game.createMonsterType("scarab")
local monster = {}

monster.description = "a scarab"
monster.experience = 120
monster.outfit = {
	lookType = 83,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 320
monster.maxHealth = 320
monster.race = "venom"
monster.corpse = 6024
monster.speed = 170
monster.manaCost = 395

monster.changeTarget = {
	interval = 2000,
	chance = 0,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 80,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 40, attack = 43},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 800, chance = 40, radius = 1, target = 0, effect = CONST_ME_POFF},
}

monster.defenses = {
	defense = 15,
	armor = 12,
		{name = "speed", interval = 1000, chance = 5, speedchange = 250, duration = 4000},
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = 10},
		{type = COMBAT_FIREDAMAGE, percent = -18},
		{type = COMBAT_PHYSICALDAMAGE, percent = 15},
		{type = COMBAT_ENERGYDAMAGE, percent = 10},
}

monster.immunities = {
		{type = "earth", condition = true},
		{type = "paralyze", condition = true},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 80000, maxCount = 50},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2666, chance = 20000, maxCount = 3},
			{id = 2544, chance = 20000, maxCount = 4},
			{id = 2439, chance = 2500},
			{id = 2442, chance = 2500},
			{id = 2159, chance = 1000},
			{id = 2149, chance = 2000, maxCount = 2},
			{id = 2150, chance = 2000, maxCount = 3},
		}
	},
}

mType:register(monster)
