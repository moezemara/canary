local mType = Game.createMonsterType("Lost Soul")
local monster = {}

monster.description = "a lost soul"
monster.experience = 4000
monster.outfit = {
	lookType = 232,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 5800
monster.maxHealth = 5800
monster.race = "undead"
monster.corpse = 6310
monster.speed = 250
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
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -50, maxDamage = -440},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 20, range = 7, radius = 4, target = 0, minDamage = -150, maxDamage = -250, shootEffect = CONST_ANI_BURSTARROW, effect = CONST_ME_REDSHIMMER},
		{name = "speed", interval = 2000, chance = 20, range = 1, target = 1, speedchange = -400, duration = 30000, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 20, range = 7, radius = 7, target = 0, minDamage = -100, maxDamage = -220, effect = CONST_ME_YELLOWBUBBLE},
}

monster.defenses = {
	defense = 35,
	armor = 25,
		{name = "speed", interval = 1000, chance = 35, speedchange = 370, duration = 30000},
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = 100},
		{type = COMBAT_DEATHDAMAGE, percent = 100},
		{type = COMBAT_EARTHDAMAGE, percent = 100},
		{type = COMBAT_ICEDAMAGE, percent = 50},
		{type = COMBAT_ENERGYDAMAGE, percent = 30},
		{type = COMBAT_HOLYDAMAGE, percent = -20},
}

monster.immunities = {
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 30,
		{text = "Forgive Meeeee!"},
		{text = "Mouuuurn meeee!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
}

mType:register(monster)
