local mType = Game.createMonsterType("Dragon Mage")
local monster = {}

monster.description = "a dragon mage"
monster.experience = 900000000
monster.outfit = {
	lookType = 351,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 370000000
monster.maxHealth = 370000000
monster.race = "blood"
monster.corpse = 3058
monster.speed = 1000
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8,
}

monster.strategiesTarget = {
	nearest = 500,
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
		{name = "melee", interval = 1, skill = 100, attack = 600000},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1, chance = 1, range = 7, minDamage = -800065, maxDamage = -2200000, shootEffect = CONST_ANI_EARTH},
		{name = "outfit", interval = 1000, chance = 12, range = 7, duration = 5000},
}

monster.defenses = {
	defense = 45,
	armor = 40,
		{name = "speed", interval = 1000, chance = 9, speedchange = 320, duration = 4000},
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 15, minDamage = 500000, maxDamage = 700000},
}

monster.elements = {
		{type = COMBAT_EARTHDAMAGE, percent = 50},
		{type = COMBAT_HOLYDAMAGE, percent = 50},
		{type = COMBAT_FIREDAMAGE, percent = 15},
		{type = COMBAT_ENERGYDAMAGE, percent = 5},
		{type = COMBAT_PHYSICALDAMAGE, percent = 25},
		{type = COMBAT_ICEDAMAGE, percent = 30},
		{type = COMBAT_DEATHDAMAGE, percent = 30},
}

monster.immunities = {
		{type = "invisible", condition = true},
		{type = "paralyze", condition = true},
}

monster.voices = {
	interval = 2500,
	chance = 10,
		{text = "You wont defeat me"},
		{text = "Ill beat you up!"},
		{text = "ARGH!"},
}

monster.loot = {
	{id = 2157, chance = 12000, maxCount = 5},
	{id = 2160, chance = 100000, maxCount = 90},
	{id = 7838, chance = 50},
	{id = 2656, chance = 1325, maxCount = 80},
	{
		id = 2002, chance = 100000,
		childs = {
			{id = 7893, chance = 1800},
			{id = 9980, chance = 6325},
			{id = 2646, chance = 600},
			{id = 2523, chance = 9500},
			{id = 2505, chance = 300},
		}
	},
}

mType:register(monster)
