local mType = Game.createMonsterType("Frozen Dragon")
local monster = {}

monster.description = "a frost dragon"
monster.experience = 2100
monster.outfit = {
	lookType = 248,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 100000000
monster.maxHealth = 100000000
monster.race = "undead"
monster.corpse = 7091
monster.speed = 260
monster.manaCost = 390

monster.changeTarget = {
	interval = 2000,
	chance = 50,
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
	staticAttackChance = 70,
	targetDistance = 0,
	runHealth = 300,
}

monster.attacks = {
		{name = "melee", interval = 20, skill = 100, attack = 500000},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 3000, chance = 10, length = 7, spread = 3, minDamage = 1000000, maxDamage = -2000000, effect = CONST_ME_POFF},
		{name = "speed", interval = 2000, chance = 11, length = 7, spread = 3, speedchange = -650, effect = CONST_ME_ICEATTACK},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 200, chance = 30, radius = 4, target = 1, minDamage = 3000000, maxDamage = -10000000, effect = CONST_ME_ICEAREA, shootEffect = CONST_ANI_SMALLICE},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 200, chance = 22, radius = 3, target = 0, minDamage = 5000000, maxDamage = -16000000, effect = CONST_ME_ICETORNADO},
		{name = "speed", interval = 1000, chance = 11, radius = 3, target = 0, speedchange = -700, effect = CONST_ME_POFF},
}

monster.defenses = {
	defense = 45,
	armor = 45,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 10, minDamage = 500000, maxDamage = 2000000},
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 1},
}

monster.immunities = {
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 3000,
	chance = 200,
		{text = "CHHHRRRR"},
		{text = "HISSSS"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2672, chance = 20000, maxCount = 5},
	{id = 2033, chance = 1818},
	{id = 1976, chance = 3333},
	{id = 2413, chance = 5000},
	{id = 7290, chance = 1400},
	{id = 7378, chance = 2000, maxCount = 2},
	{id = 2547, chance = 2222, maxCount = 10},
	{id = 2796, chance = 6666},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2148, chance = 100000, maxCount = 100},
			{id = 2146, chance = 2222, maxCount = 2},
			{id = 2528, chance = 1333},
			{id = 7441, chance = 2222},
			{id = 7402, chance = 1666},
			{id = 2498, chance = 1300},
		}
	},
}

mType:register(monster)
