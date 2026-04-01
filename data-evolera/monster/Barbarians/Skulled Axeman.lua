local mType = Game.createMonsterType("Skulled Axeman")
local monster = {}

monster.description = "a Skulled axeman"
monster.experience = 85
monster.outfit = {
	lookType = 255,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 300000000
monster.maxHealth = 300000000
monster.race = "blood"
monster.corpse = 6080
monster.speed = 870
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
		{name = "melee", interval = 50, minDamage = -2200000, maxDamage = -2400000},
}

monster.defenses = {
	defense = 30,
	armor = 30,
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 5},
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
