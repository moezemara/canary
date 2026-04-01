local mType = Game.createMonsterType("frost dragon hatchling")
local monster = {}

monster.description = "a frost dragon hatchling"
monster.experience = 745
monster.outfit = {
	lookType = 283,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 800
monster.maxHealth = 800
monster.race = "undead"
monster.corpse = 7969
monster.speed = 170
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 5,
}

monster.strategiesTarget = {
	nearest = 70,
	defense = 10,
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
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 80,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 60, attack = 40},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 1000, chance = 12, length = 8, spread = 3, minDamage = -50, maxDamage = -160, effect = CONST_ME_ICETORNADO},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 1000, chance = 12, range = 5, minDamage = -60, maxDamage = -120, shootEffect = CONST_ANI_ICE},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 1000, chance = 10, radius = 4, target = 1, minDamage = 0, maxDamage = -160, effect = CONST_ME_ICEAREA, shootEffect = CONST_ANI_SMALLICE},
}

monster.defenses = {
	defense = 38,
	armor = 25,
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 5},
}

monster.immunities = {
		{type = "fire", condition = true},
		{type = "earth", condition = true},
		{type = "ice", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 50,
		{text = "Rooawwrr"},
		{text = "Fchu?"},
}

monster.loot = {
	{id = 7618, chance = 5000},
	{id = 2672, chance = 5000},
	{id = 2148, chance = 100000, maxCount = 26},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2148, chance = 100000, maxCount = 25},
		}
	},
}

mType:register(monster)
