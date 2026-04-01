local mType = Game.createMonsterType("Foreman Kneebiter")
local monster = {}

monster.description = "foreman kneebiter"
monster.experience = 570
monster.outfit = {
	lookType = 70,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 445
monster.maxHealth = 445
monster.race = "blood"
monster.corpse = 6013
monster.speed = 200
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
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -60, maxDamage = -200},
}

monster.defenses = {
	defense = 22,
	armor = 15,
}

monster.elements = {
		{type = COMBAT_EARTHDAMAGE, percent = 90},
		{type = COMBAT_PHYSICALDAMAGE, percent = 20},
		{type = COMBAT_FIREDAMAGE, percent = -5},
		{type = COMBAT_DEATHDAMAGE, percent = -5},
}

monster.immunities = {
		{type = "invisible", condition = true},
}

monster.loot = {
	{id = 5880, chance = 2500, maxCount = 2},
	{id = 2148, chance = 90000, maxCount = 100},
	{id = 2513, chance = 6666},
}

mType:register(monster)
