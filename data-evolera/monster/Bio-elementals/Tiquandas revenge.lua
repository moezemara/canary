local mType = Game.createMonsterType("Tiquandas Revenge")
local monster = {}

monster.description = "a tiquandas revenge"
monster.experience = 2635
monster.outfit = {
	lookType = 120,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 2400
monster.maxHealth = 2400
monster.race = "venom"
monster.corpse = 6047
monster.speed = 230
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
		{name = "melee", interval = 2000, skill = 80, attack = 85},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 13, range = 7, minDamage = 0, maxDamage = -200, shootEffect = CONST_ANI_EARTH},
		{name = "speed", interval = 1000, chance = 20, range = 7, speedchange = -900, duration = 30000, shootEffect = CONST_ANI_POISON, effect = CONST_ME_GREENSHIMMER},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 12, radius = 3, target = 0, minDamage = -100, maxDamage = -250, effect = CONST_ME_POISON},
}

monster.defenses = {
	defense = 45,
	armor = 30,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 25, minDamage = 200, maxDamage = 400},
		{name = "speed", interval = 3000, chance = 17, duration = 10000},
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = -20},
		{type = COMBAT_DEATHDAMAGE, percent = 10},
		{type = COMBAT_ICEDAMAGE, percent = 8},
		{type = COMBAT_PHYSICALDAMAGE, percent = 15},
}

monster.immunities = {
		{type = "earth", condition = true},
		{type = "invisible", condition = true},
}

monster.loot = {
	{id = 2666, chance = 60000, maxCount = 50},
	{id = 2804, chance = 3000},
	{id = 2802, chance = 5000},
	{id = 2792, chance = 8000, maxCount = 8},
	{id = 5015, chance = 100000},
}

mType:register(monster)
