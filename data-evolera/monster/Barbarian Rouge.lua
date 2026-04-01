local mType = Game.createMonsterType("Barbarian Rouge")
local monster = {}

monster.description = "a Barbarian Rouge"
monster.experience = 0
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
monster.health = 20250000
monster.maxHealth = 20250000
monster.race = "blood"
monster.corpse = 6080
monster.speed = 750
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
		{name = "melee", interval = 1, minDamage = -100000, maxDamage = -270000},
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
	{id = 9971, chance = 33333, maxCount = 6},
	{id = 6567, chance = 100},
}

mType:register(monster)
