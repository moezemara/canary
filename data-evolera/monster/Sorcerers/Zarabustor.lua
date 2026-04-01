local mType = Game.createMonsterType("Zarabustor")
local monster = {}

monster.description = "zarabustor"
monster.experience = 8000
monster.outfit = {
	lookType = 130,
	lookHead = 19,
	lookBody = 71,
	lookLegs = 128,
	lookFeet = 128,
	lookAddons = 1,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 5100
monster.maxHealth = 5100
monster.race = "blood"
monster.corpse = 6080
monster.speed = 265
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 30,
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
	targetDistance = 4,
	runHealth = 1000,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 55, attack = 50},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 1000, chance = 12, range = 7, target = 1, attack = -190, minDamage = -120, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICEATTACK},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 2000, chance = 20, range = 7, target = 1, minDamage = -180, maxDamage = -250, shootEffect = CONST_ANI_ENERGYBALL, effect = CONST_ME_ENERGY},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 2000, chance = 16, range = 7, minDamage = -35, maxDamage = -255, shootEffect = CONST_ANI_ICE},
		{name = "speed", interval = 3000, chance = 18, range = 7, speedchange = -750, duration = 40000, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_BLUESHIMMER},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 3000, chance = 23, range = 7, radius = 3, target = 1, minDamage = 160, maxDamage = -250, shootEffect = CONST_ANI_BURSTARROW, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 14, range = 7, radius = 2, target = 1, shootEffect = CONST_ANI_FIRE},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 3000, chance = 15, length = 8, spread = 0, minDamage = -180, maxDamage = -350, effect = CONST_ME_BIGCLOUDS},
}

monster.defenses = {
	defense = 20,
	armor = 25,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 15, minDamage = 200, maxDamage = 400},
		{name = "invisible", interval = 2000, chance = 10, duration = 4000},
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = -10},
		{type = COMBAT_HOLYDAMAGE, percent = -10},
		{type = COMBAT_EARTHDAMAGE, percent = 90},
}

monster.immunities = {
		{type = "energy", condition = true},
		{type = "fire", condition = true},
		{type = "ice", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "warlock", chance = 15, interval = 3000, max = 1},
		{name = "green djinn", chance = 15, interval = 2000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Killing is a splendid diversion for my studies."},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2148, chance = 100000, maxCount = 50},
	{id = 7368, chance = 40000, maxCount = 3},
	{id = 2146, chance = 13800, maxCount = 3},
	{
		id = 1980, chance = 100000,
		childs = {
			{id = 2656, chance = 36000},
			{id = 2466, chance = 18877},
			{id = 2436, chance = 26400},
			{id = 2123, chance = 12000},
		}
	},
}

mType:register(monster)
