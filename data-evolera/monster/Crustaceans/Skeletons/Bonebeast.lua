local mType = Game.createMonsterType("Bonebeast")
local monster = {}

monster.description = "a bonebeast"
monster.experience = 580
monster.outfit = {
	lookType = 101,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 515
monster.maxHealth = 515
monster.race = "undead"
monster.corpse = 6030
monster.speed = 210
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
		{name = "melee", interval = 2000, skill = 75, attack = 47},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 10, range = 7, minDamage = -25, maxDamage = -65, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISON},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 15, radius = 3, target = 0, minDamage = -30, maxDamage = -50, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 13, radius = 3, target = 0, minDamage = -60, maxDamage = -80, effect = CONST_ME_POISON},
}

monster.defenses = {
	defense = 35,
	armor = 20,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 12, minDamage = 30, maxDamage = 60},
}

monster.elements = {
		{type = COMBAT_DEATHDAMAGE, percent = 100},
		{type = COMBAT_EARTHDAMAGE, percent = 100},
		{type = COMBAT_FIREDAMAGE, percent = -10},
		{type = COMBAT_HOLYDAMAGE, percent = -20},
}

monster.immunities = {
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Cccchhhhhhhhh!"},
		{text = "Knooorrrrr!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 20},
}

mType:register(monster)
