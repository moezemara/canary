local mType = Game.createMonsterType("Blood Vampire")
local monster = {}

monster.description = "a blood vampire"
monster.experience = 0
monster.outfit = {
	lookType = 287,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 673900000
monster.maxHealth = 673900000
monster.race = "blood"
monster.corpse = 8937
monster.speed = 950
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
	runHealth = 300,
}

monster.attacks = {
		{name = "melee", interval = 1, skill = 71, attack = 1340000},
		{name = "speed", interval = 2000, chance = 17, range = 7, radius = 4, target = 1, speedchange = -680, duration = 15000, shootEffect = CONST_ANI_POISON, effect = CONST_ME_GREENBUBBLE},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 2000, chance = 14, length = 8, spread = 4, minDamage = -9000000, maxDamage = -2000010, effect = CONST_ME_BLUEBUBBLE},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 12, length = 8, spread = 3, minDamage = -9000000, maxDamage = -21000000, effect = CONST_ME_SMALLPLANTS},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 1000, chance = 14, range = 7, target = 1, minDamage = -8500000, maxDamage = -1400000, shootEffect = CONST_ANI_SMALLICE},
}

monster.defenses = {
	defense = 35,
	armor = 25,
		{name = "combat", type = COMBAT_HEALING, interval = 200, chance = 100, minDamage = 3000000, maxDamage = 4000000},
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
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2148, chance = 100000, maxCount = 25},
	{id = 2498, chance = 700},
	{id = 2195, chance = 800},
	{id = 2475, chance = 1000},
	{id = 3976, chance = 50000, maxCount = 10},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2214, chance = 1200},
			{id = 2671, chance = 65000, maxCount = 3},
			{id = 2666, chance = 90000, maxCount = 4},
			{id = 2146, chance = 5000, maxCount = 2},
			{id = 2177, chance = 1800},
			{id = 2476, chance = 1000},
			{id = 4850, chance = 1200},
			{id = 2149, chance = 4000, maxCount = 3},
			{id = 2536, chance = 555},
			{id = 2168, chance = 2500},
			{id = 2197, chance = 800},
		}
	},
}

mType:register(monster)
