local mType = Game.createMonsterType("monk")
local monster = {}

monster.description = "a monk"
monster.experience = 200
monster.outfit = {
	lookType = 57,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 240
monster.maxHealth = 240
monster.race = "blood"
monster.corpse = 6080
monster.speed = 220
monster.manaCost = 600

monster.changeTarget = {
	interval = 5000,
	chance = 8,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = true,
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
		{name = "melee", interval = 2000, minDamage = -40, maxDamage = -140},
}

monster.defenses = {
	defense = 22,
	armor = 20,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 17, minDamage = 30, maxDamage = 50},
		{name = "speed", interval = 1000, chance = 10, speedchange = 300, duration = 3000},
}

monster.elements = {
		{type = COMBAT_DEATHDAMAGE, percent = 50},
}

monster.immunities = {
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "'Repent heretic!, Feel my kick!. A prayer for Zathroth"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 1949, chance = 10000},
	{id = 2467, chance = 10000},
	{id = 2642, chance = 6666},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2044, chance = 6666},
			{id = 2689, chance = 20000, maxCount = 3},
			{id = 2166, chance = 1428},
		}
	},
}

mType:register(monster)
