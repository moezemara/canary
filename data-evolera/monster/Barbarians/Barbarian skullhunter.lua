local mType = Game.createMonsterType("Barbarian Skullhunter")
local monster = {}

monster.description = "a Skullhunter"
monster.experience = 85
monster.outfit = {
	lookType = 254,
	lookHead = 0,
	lookBody = 77,
	lookLegs = 77,
	lookFeet = 114,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 135
monster.maxHealth = 135
monster.race = "blood"
monster.corpse = 6080
monster.speed = 270
monster.manaCost = 0

monster.changeTarget = {
	interval = 60000,
	chance = 0,
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
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -30, maxDamage = -80},
}

monster.defenses = {
	defense = 30,
	armor = 30,
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 5},
		{type = COMBAT_ICEDAMAGE, percent = 50},
		{type = COMBAT_ENERGYDAMAGE, percent = 20},
		{type = COMBAT_EARTHDAMAGE, percent = -10},
		{type = COMBAT_DEATHDAMAGE, percent = -5},
}

monster.immunities = {
		{type = "drunk", condition = true},
		{type = "paralyze", condition = true},
}

monster.voices = {
	interval = 2000,
	chance = 5,
		{text = "You will become my trophy."},
		{text = "Fight harder, coward."},
		{text = "Show that you are a worthy opponent."},
}

monster.loot = {
	{id = 2148, chance = 33333, maxCount = 30},
	{id = 2403, chance = 10000},
	{id = 2460, chance = 10000},
	{id = 2050, chance = 10000},
	{id = 2168, chance = 333},
	{id = 7462, chance = 900},
	{id = 7449, chance = 100},
}

mType:register(monster)
