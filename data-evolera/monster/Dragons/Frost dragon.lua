local mType = Game.createMonsterType("Frost Dragon")
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
monster.health = 1800
monster.maxHealth = 1800
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
		{name = "melee", interval = 2000, skill = 75, attack = 70},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 3000, chance = 10, length = 7, spread = 3, minDamage = 0, maxDamage = -350, effect = CONST_ME_POFF},
		{name = "speed", interval = 2000, chance = 11, length = 7, spread = 3, speedchange = -650, effect = CONST_ME_ICEATTACK},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 2000, chance = 18, radius = 4, target = 1, minDamage = 0, maxDamage = -280, effect = CONST_ME_ICEAREA, shootEffect = CONST_ANI_SMALLICE},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 2000, chance = 22, radius = 3, target = 0, minDamage = 0, maxDamage = -160, effect = CONST_ME_ICETORNADO},
		{name = "speed", interval = 1000, chance = 11, radius = 3, target = 0, speedchange = -700, effect = CONST_ME_POFF},
}

monster.defenses = {
	defense = 45,
	armor = 45,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 10, minDamage = 50, maxDamage = 100},
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 15},
}

monster.immunities = {
		{type = "ice", condition = true},
		{type = "fire", condition = true},
		{type = "earth", condition = true},
		{type = "paralyze", condition = true},
		--{type = "lifedrain", condition = true},
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
