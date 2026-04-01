local mType = Game.createMonsterType("Stony Golem")
local monster = {}

monster.description = "a stony golem"
monster.experience = 500000000
monster.outfit = {
	lookType = 67,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 35000000
monster.maxHealth = 35000000
monster.race = "undead"
monster.corpse = 9867
monster.speed = 160
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
		{name = "melee", interval = 20, chance = 100, range = 1, minDamage = -800000, maxDamage = -1850000},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 2000, chance = 13, range = 7, minDamage = -300000, maxDamage = -900000, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_REDSHIMMER},
		{name = "speed", interval = 3000, chance = 20, length = 8, spread = 0, speedchange = 200, duration = 30000, effect = CONST_ME_SMALLPLANTS},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 100, chance = 14, minDamage = -100000, maxDamage = -500000},
}

monster.defenses = {
	defense = 55,
	armor = 50,
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = -99},
		{type = COMBAT_DEATHDAMAGE, percent = 10},
		{type = COMBAT_ICEDAMAGE, percent = 10},
		{type = COMBAT_HOLYDAMAGE, percent = 20},
}

monster.immunities = {
		{type = "earth", condition = true},
}

monster.loot = {
	{id = 2787, chance = 50000, maxCount = 2},
	{id = 4860, chance = 50000},
	{id = 2790, chance = 50000},
	{id = 2148, chance = 100000, maxCount = 89},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2788, chance = 10000},
			{id = 7618, chance = 3000},
			{id = 7588, chance = 1200},
			{id = 2146, chance = 1500},
			{id = 2213, chance = 800},
			{id = 7443, chance = 300},
			{id = 2515, chance = 200},
		}
	},
}

mType:register(monster)
