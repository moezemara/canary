local mType = Game.createMonsterType("Massive Earth Elemental")
local monster = {}

monster.description = "a Massive earth elemental"
monster.experience = 850
monster.outfit = {
	lookType = 285,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1330
monster.maxHealth = 1330
monster.race = "undead"
monster.corpse = 8933
monster.speed = 290
monster.manaCost = 0

monster.changeTarget = {
	interval = 20000,
	chance = 50,
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
	canPushCreatures = false,
	staticAttackChance = 80,
	targetDistance = 1,
	runHealth = 1,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 100, attack = 95},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 15, range = 7, minDamage = -25, maxDamage = -140, shootEffect = CONST_ANI_EARTH},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 10, length = 6, spread = 0, minDamage = 0, maxDamage = -260, effect = CONST_ME_SMALLPLANTS},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 9, radius = 4, target = 0, minDamage = 0, maxDamage = -240, effect = CONST_ME_POFF},
}

monster.defenses = {
	defense = 30,
	armor = 30,
}

monster.elements = {
		{type = COMBAT_DEATHDAMAGE, percent = 20},
		{type = COMBAT_ICEDAMAGE, percent = 20},
		{type = COMBAT_PHYSICALDAMAGE, percent = 20},
		{type = COMBAT_HOLYDAMAGE, percent = 20},
		{type = COMBAT_FIREDAMAGE, percent = -25},
}

monster.immunities = {
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
		{type = "earth", condition = true},
		{type = "energy", condition = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 114},
	{id = 1294, chance = 9000, maxCount = 9},
	{id = 2436, chance = 3000},
}

mType:register(monster)
