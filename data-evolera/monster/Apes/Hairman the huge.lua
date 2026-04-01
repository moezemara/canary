local mType = Game.createMonsterType("Hairman the huge")
local monster = {}

monster.description = "a hairman the huge"
monster.experience = 335
monster.outfit = {
	lookType = 116,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 600
monster.maxHealth = 600
monster.race = "blood"
monster.corpse = 6043
monster.speed = 230
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 14,
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
		{name = "melee", interval = 2000, skill = 40, attack = 35},
}

monster.defenses = {
	defense = 25,
	armor = 20,
		{name = "speed", interval = 1000, chance = 7, speedchange = 260, duration = 3000},
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 10},
		{type = COMBAT_FIREDAMAGE, percent = 20},
		{type = COMBAT_EARTHDAMAGE, percent = 20},
		{type = COMBAT_ENERGYDAMAGE, percent = 5},
		{type = COMBAT_ICEDAMAGE, percent = -10},
		{type = COMBAT_DEATHDAMAGE, percent = -10},
}

monster.immunities = {
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Hugah!"},
		{text = "Ungh! Ungh!"},
		{text = "Huaauaauaauaa!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 60},
	{id = 5883, chance = 15000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2676, chance = 7000, maxCount = 2},
			{id = 2200, chance = 20000},
			{id = 2166, chance = 9300},
			{id = 2463, chance = 5000},
		}
	},
}

mType:register(monster)
