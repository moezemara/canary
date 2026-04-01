local mType = Game.createMonsterType("Goblin Scavenger")
local monster = {}

monster.description = "a goblin scavenger"
monster.experience = 37
monster.outfit = {
	lookType = 297,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 60
monster.maxHealth = 60
monster.race = "blood"
monster.corpse = 6002
monster.speed = 220
monster.manaCost = 310

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
	convinceable = true,
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 10,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 15, attack = 6},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 9, range = 7, minDamage = -0, maxDamage = -29, shootEffect = CONST_ANI_SMALLSTONE},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 3000, chance = 10, range = 7, minDamage = -10, maxDamage = -30, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA},
}

monster.defenses = {
	defense = 10,
	armor = 8,
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = 20},
		{type = COMBAT_HOLYDAMAGE, percent = 20},
		{type = COMBAT_EARTHDAMAGE, percent = -10},
		{type = COMBAT_DEATHDAMAGE, percent = -5},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Shiny, Shiny!"},
		{text = "You mean!"},
		{text = "All mine!"},
		{text = "Uhh!"},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 9},
	{id = 2461, chance = 10000},
	{id = 2406, chance = 10000},
	{id = 2467, chance = 10000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2559, chance = 10000},
			{id = 1294, chance = 20000, maxCount = 3},
			{id = 2667, chance = 20000, maxCount = 2},
			{id = 2230, chance = 10000},
			{id = 2235, chance = 10000},
		}
	},
}

mType:register(monster)
