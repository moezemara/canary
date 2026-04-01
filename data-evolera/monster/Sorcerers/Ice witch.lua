local mType = Game.createMonsterType("Ice Witch")
local monster = {}

monster.description = "an ice witch"
monster.experience = 580
monster.outfit = {
	lookType = 149,
	lookHead = 0,
	lookBody = 47,
	lookLegs = 105,
	lookFeet = 105,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 540
monster.maxHealth = 540
monster.race = "undead"
monster.corpse = 6081
monster.speed = 188
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 5,
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
	canPushCreatures = false,
	staticAttackChance = 50,
	targetDistance = 4,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 45, attack = 30},
		{name = "outfit", interval = 1000, chance = 10, range = 7, duration = 8000, effect = CONST_ME_BLUESHIMMER},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 1000, chance = 7, length = 6, spread = 3, minDamage = 0, maxDamage = -100, effect = CONST_ME_ICEATTACK},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 2000, chance = 15, length = 4, spread = 2, minDamage = -50, maxDamage = -110, effect = CONST_ME_ICEAREA},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 1000, chance = 9, range = 7, target = 1, minDamage = -30, maxDamage = -110, shootEffect = CONST_ANI_SNOWBALL, effect = CONST_ME_ICEATTACK},
		{name = "speed", interval = 1000, chance = 11, range = 7, speedchange = -700, duration = 20000, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 70,
	armor = 75,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 25, minDamage = 50, maxDamage = 80},
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = 50},
		{type = COMBAT_HOLYDAMAGE, percent = 30},
		{type = COMBAT_ENERGYDAMAGE, percent = -10},
		{type = COMBAT_DEATHDAMAGE, percent = -10},
}

monster.immunities = {
		{type = "ice", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 2000,
	chance = 5,
		{text = "So you think you are cool?"},
		{text = "I hope it is not too cold for you! HeHeHe."},
		{text = "Freeze!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 80},
	{id = 7449, chance = 1222},
	{id = 7441, chance = 5555},
	{id = 7387, chance = 1444},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2423, chance = 3333},
			{id = 2796, chance = 9999, maxCount = 3},
			{id = 7459, chance = 1000},
		}
	},
}

mType:register(monster)
