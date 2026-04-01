local mType = Game.createMonsterType("omruc")
local monster = {}

monster.description = "a omruc"
monster.experience = 2950
monster.outfit = {
	lookType = 84,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 4300
monster.maxHealth = 4300
monster.race = "blood"
monster.corpse = 6025
monster.speed = 370
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
	targetDistance = 4,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 90, attack = 95},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 10, range = 7, minDamage = -100, maxDamage = -500, shootEffect = CONST_ANI_POISONARROW, effect = CONST_ME_GREENBUBBLE},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 11, range = 7, radius = 3, target = 1, minDamage = -50, maxDamage = -450, shootEffect = CONST_ANI_BURSTARROW, effect = CONST_ME_EXPLOSIONAREA},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 13, range = 7, minDamage = -200, maxDamage = -500, shootEffect = CONST_ANI_ARROW, effect = CONST_ME_EXPLOSIONAREA},
		{name = "speed", interval = 1000, chance = 25, range = 7, speedchange = -850, duration = 50000, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 25,
	armor = 20,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 17, minDamage = 100, maxDamage = 200},
		{name = "invisible", interval = 2000, chance = 14, duration = 8000},
}

monster.immunities = {
		{type = "death", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "Stalker", chance = 10, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Now chhhou shhhee me ... Now chhhou don't!!"},
		{text = "Catchhhh me if chhhou can."},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2144, chance = 1850},
	{id = 2354, chance = 100000},
	{id = 2544, chance = 13000, maxCount = 21},
	{id = 2545, chance = 10000, maxCount = 20},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2148, chance = 100000, maxCount = 70},
			{id = 2195, chance = 1400},
			{id = 2444, chance = 1000},
			{id = 7365, chance = 8000, maxCount = 2},
			{id = 2547, chance = 7000, maxCount = 3},
			{id = 2145, chance = 4000, maxCount = 3},
		}
	},
}

mType:register(monster)
