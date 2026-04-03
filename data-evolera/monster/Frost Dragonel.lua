local mType = Game.createMonsterType("Frost Dragonel")
local monster = {}

monster.description = "a frost dragonel"
monster.experience = 36000000000
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
monster.health = 20250000
monster.maxHealth = 20250000
monster.race = "undead"
monster.corpse = 7969
monster.speed = 600
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
	runHealth = 10000,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 60, attack = 450000},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 1000, chance = 12, length = 8, spread = 3, minDamage = -50, maxDamage = -160, effect = CONST_ME_ICETORNADO},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 1000, chance = 12, range = 5, minDamage = -110000, maxDamage = -400000, shootEffect = CONST_ANI_ICE},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 1000, chance = 10, radius = 4, target = 1, minDamage = 300000, maxDamage = -320000, effect = CONST_ME_ICEAREA, shootEffect = CONST_ANI_SMALLICE},
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
		{text = "My mighty frost magics is to powerful for you Frzhh?"},
		{text = "You will never kill me enemie!!"},
}

monster.loot = {
	{id = 2361, chance = 90},
	{id = 7618, chance = 5000},
	{id = 2672, chance = 5000},
	{
		id = 2002, chance = 100000,
		childs = {
			{id = 9971, chance = 100000, maxCount = 4},
			{id = 2111, chance = 100000, maxCount = 17},
			{id = 10521, chance = 30},
			{id = 8887, chance = 1000},
			{id = 7838, chance = 100},
		}
	},
}

mType:register(monster)
