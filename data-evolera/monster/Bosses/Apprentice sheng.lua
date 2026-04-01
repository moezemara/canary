local mType = Game.createMonsterType("Apprentice Sheng")
local monster = {}

monster.description = "apprentice sheng"
monster.experience = 100
monster.outfit = {
	lookType = 23,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 95
monster.maxHealth = 95
monster.race = "blood"
monster.corpse = 5981
monster.speed = 170
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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 15, attack = 10},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1000, chance = 14, range = 7, minDamage = -15, maxDamage = -25, shootEffect = CONST_ANI_ENERGYBALL, effect = CONST_ME_ENERGYAREA},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 10, range = 7, radius = 1, target = 1, minDamage = -15, maxDamage = -45, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1000, chance = 8, range = 7, radius = 1, target = 1, shootEffect = CONST_ANI_ENERGY},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 10500, chance = 100, radius = 3, target = 0, minDamage = 0, maxDamage = 0},
}

monster.defenses = {
	defense = 13,
	armor = 12,
}

monster.immunities = {
		{type = "energy", condition = true},
}

monster.summons = {
		{name = "Hyena", chance = 100, interval = 10500, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "I will protect the secrets of my master!"},
		{text = "This isle will become ours alone!"},
		{text = "Kaplar!"},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 2050, chance = 10000},
	{id = 2461, chance = 8000},
	{id = 2649, chance = 8000},
	{id = 5878, chance = 100000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2404, chance = 10000},
			{id = 2362, chance = 20000, maxCount = 5},
			{id = 2817, chance = 10000},
			{id = 2311, chance = 2857},
			{id = 7425, chance = 1000},
		}
	},
}

mType:register(monster)
