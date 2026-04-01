local mType = Game.createMonsterType("Wyvern")
local monster = {}

monster.description = "a wyvern"
monster.experience = 515
monster.outfit = {
	lookType = 239,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 795
monster.maxHealth = 795
monster.race = "blood"
monster.corpse = 6302
monster.speed = 315
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
		{name = "melee", interval = 2000, minDamage = -60, maxDamage = -120},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 3000, chance = 12, length = 8, spread = 3, minDamage = -30, maxDamage = -120, effect = CONST_ME_POISON},
		{name = "melee", interval = 2000, chance = 12, length = 8, spread = 3, minDamage = -30, maxDamage = -120, effect = CONST_ME_REDNOTE},
		{name = "drunk", interval = 4000, chance = 2, range = 7, shootEffect = CONST_ANI_POISON, effect = CONST_ME_REDNOTE},
}

monster.defenses = {
	defense = 18,
	armor = 25,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 13, minDamage = 34, maxDamage = 56},
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = 20},
		{type = COMBAT_ICEDAMAGE, percent = 10},
}

monster.immunities = {
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Shriiiek", yell = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 67},
	{id = 2672, chance = 20000, maxCount = 3},
	{id = 1976, chance = 3333},
	{id = 2547, chance = 1667, maxCount = 3},
	{id = 2647, chance = 2000},
	{id = 7408, chance = 2000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2127, chance = 1818},
			{id = 2146, chance = 1000},
		}
	},
}

mType:register(monster)
