local mType = Game.createMonsterType("Mad Scientist")
local monster = {}

monster.description = "a mad scientist"
monster.experience = 205
monster.outfit = {
	lookType = 133,
	lookHead = 97,
	lookBody = 0,
	lookLegs = 38,
	lookFeet = 97,
	lookAddons = 1,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 325
monster.maxHealth = 325
monster.race = "blood"
monster.corpse = 6080
monster.speed = 220
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 30,
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
		{name = "melee", interval = 2000, minDamage = -0, maxDamage = -35},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 35, range = 7, minDamage = -20, maxDamage = -60, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_POFF},
		{name = "energy strike", interval = 2000, chance = 25, minDamage = 0, maxDamage = -30},
		{name = "speed", interval = 3000, chance = 10, range = 7, target = 1, speedchange = -300, duration = 2000, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 20,
	armor = 15,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 25, minDamage = 10, maxDamage = 30},
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = 10},
		{type = COMBAT_EARTHDAMAGE, percent = 20},
		{type = COMBAT_ENERGYDAMAGE, percent = 20},
		{type = COMBAT_ICEDAMAGE, percent = 10},
		{type = COMBAT_HOLYDAMAGE, percent = 20},
		{type = COMBAT_DEATHDAMAGE, percent = -15},
}

monster.immunities = {
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 3000,
	chance = 10,
		{text = "Die in the name of Science!"},
		{text = "You will regret interrupting my studies!"},
		{text = "Let me test this!"},
		{text = "I will study your corpse!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 70},
	{id = 2148, chance = 100000, maxCount = 50},
	{id = 2787, chance = 900, maxCount = 3},
	{id = 2308, chance = 1500},
	{id = 7620, chance = 13500},
	{id = 7618, chance = 12500},
	{id = 2687, chance = 900, maxCount = 3},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 7762, chance = 700},
			{id = 2177, chance = 800},
			{id = 6324, chance = 800},
			{id = 2162, chance = 800},
			{id = 2195, chance = 200},
		}
	},
}

mType:register(monster)
