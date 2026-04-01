local mType = Game.createMonsterType("Jagged Earth Elemental")
local monster = {}

monster.description = "a jagged earth elemental"
monster.experience = 1300
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
monster.health = 1500
monster.maxHealth = 1500
monster.race = "undead"
monster.corpse = 8933
monster.speed = 280
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
		{name = "melee", interval = 2000, skill = 95, attack = 95},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 10, length = 6, spread = 0, minDamage = -100, maxDamage = -250, effect = CONST_ME_STONES},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 11, range = 7, radius = 6, target = 1, minDamage = 0, maxDamage = -200, shootEffect = CONST_ANI_SMALLEARTH, effect = CONST_ME_POISON},
}

monster.defenses = {
	defense = 25,
	armor = 25,
}

monster.elements = {
		{type = COMBAT_DEATHDAMAGE, percent = 20},
		{type = COMBAT_ICEDAMAGE, percent = 20},
		{type = COMBAT_ENERGYDAMAGE, percent = 20},
		{type = COMBAT_FIREDAMAGE, percent = -25},
}

monster.immunities = {
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
		{type = "earth", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Stomp STOMP"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 140},
	{id = 8298, chance = 1800},
	{id = 5880, chance = 2300},
	{id = 2149, chance = 2200, maxCount = 2},
}

mType:register(monster)
