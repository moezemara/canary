local mType = Game.createMonsterType("Angry Chokkis")
local monster = {}

monster.description = "a chokkis"
monster.experience = 1900
monster.outfit = {
	lookType = 60,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 800000000
monster.maxHealth = 800000000
monster.race = "blood"
monster.corpse = 2935
monster.speed = 500
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
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 1,
}

monster.attacks = {
		{name = "melee", interval = 2, skill = 71, attack = 840000},
		{name = "speed", interval = 2000, chance = 17, range = 7, radius = 4, target = 1, speedchange = -880, duration = 15000, shootEffect = CONST_ANI_POISON, effect = CONST_ME_GREENBUBBLE},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 2000, chance = 14, length = 8, spread = 4, minDamage = -2000000, maxDamage = -4000000, effect = CONST_ME_BLUEBUBBLE},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 12, length = 8, spread = 3, minDamage = -1800000, maxDamage = -4000000, effect = CONST_ME_SMALLPLANTS},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 1000, chance = 14, range = 7, target = 1, minDamage = -2200000, maxDamage = -3200000, shootEffect = CONST_ANI_SMALLICE},
}

monster.defenses = {
	defense = 35,
	armor = 25,
		{name = "combat", type = COMBAT_HEALING, interval = 2000, chance = 30, minDamage = 300, maxDamage = 480},
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = -15},
		{type = COMBAT_FIREDAMAGE, percent = -5},
		{type = COMBAT_ENERGYDAMAGE, percent = -15},
}

monster.immunities = {
		{type = "poison", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "FCHHHHH"},
		{text = "HISSSS"},
}

monster.loot = {
	{id = 2157, chance = 100000, maxCount = 12},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 9778, chance = 20},
			{id = 9777, chance = 20},
			{id = 9776, chance = 20},
			{id = 8821, chance = 20},
			{id = 11118, chance = 20},
			{id = 7697, chance = 10},
			{id = 8903, chance = 42},
			{id = 6433, chance = 42},
			{id = 2352, chance = 42},
			{id = 8858, chance = 42},
			{id = 11307, chance = 42},
			{id = 11323, chance = 42},
			{id = 2453, chance = 42},
			{id = 2184, chance = 42},
			{id = 11308, chance = 42},
			{id = 2270, chance = 42},
			{id = 2294, chance = 42},
			{id = 7289, chance = 42},
		}
	},
}

mType:register(monster)
