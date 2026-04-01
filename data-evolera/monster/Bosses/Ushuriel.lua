local mType = Game.createMonsterType("Ushuriel")
local monster = {}

monster.description = "ushuriel"
monster.experience = 10000
monster.outfit = {
	lookType = 12,
	lookHead = 0,
	lookBody = 95,
	lookLegs = 19,
	lookFeet = 112,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 50000
monster.maxHealth = 50000
monster.race = "fire"
monster.corpse = 6068
monster.speed = 350
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
	staticAttackChance = 85,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 140, attack = 145},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 10, length = 10, spread = 0, minDamage = -250, maxDamage = -500, effect = CONST_ME_MORTAREA},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 1000, chance = 8, radius = 5, target = 0, minDamage = -30, maxDamage = -760, effect = CONST_ME_MORTAREA, shootEffect = CONST_ANI_DEATH},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 9, length = 8, spread = 0, minDamage = -200, maxDamage = -585, effect = CONST_ME_SMALLPLANTS},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 1000, chance = 8, radius = 6, target = 0, minDamage = 0, maxDamage = -430, effect = CONST_ME_ICETORNADO},
		{name = "drunk", interval = 3000, chance = 11, radius = 6, target = 0, effect = CONST_ME_PURPLENOTE},
		--{name = "energycondition", interval = 2000, chance = 15, radius = 4, target = 0, minDamage = -250, maxDamage = -250, effect = CONST_ME_ENERGY},
}

monster.defenses = {
	defense = 45,
	armor = 50,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 12, minDamage = 400, maxDamage = 600},
		{name = "speed", interval = 1000, chance = 4, speedchange = 400, duration = 7000},
}

monster.immunities = {
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.loot = {
	{id = 6300, chance = 7777},
	{id = 2195, chance = 4444},
	{id = 2393, chance = 3000},
	{id = 2432, chance = 5555},
	{id = 2402, chance = 10000},
	{id = 2477, chance = 6666},
	{id = 2164, chance = 7300},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2150, chance = 6000, maxCount = 17},
			{id = 2462, chance = 9700},
			{id = 7591, chance = 17000},
			{id = 7591, chance = 9000},
			{id = 2149, chance = 4388, maxCount = 6},
			{id = 2396, chance = 6666},
			{id = 2158, chance = 4444},
		}
	},
}

mType:register(monster)
