local mType = Game.createMonsterType("Damaged Worker Golem")
local monster = {}

monster.description = "a damaged worker golem"
monster.experience = 95
monster.outfit = {
	lookType = 304,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 260
monster.maxHealth = 260
monster.race = "energy"
monster.corpse = 9801
monster.speed = 270
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
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -0, maxDamage = -50},
}

monster.defenses = {
	defense = 45,
	armor = 40,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 7, minDamage = 20, maxDamage = 100},
}

monster.elements = {
		{type = COMBAT_EARTHDAMAGE, percent = 50},
		{type = COMBAT_HOLYDAMAGE, percent = 30},
		{type = COMBAT_FIREDAMAGE, percent = -10},
		{type = COMBAT_ENERGYDAMAGE, percent = -5},
		{type = COMBAT_PHYSICALDAMAGE, percent = 40},
		{type = COMBAT_ICEDAMAGE, percent = 25},
		{type = COMBAT_DEATHDAMAGE, percent = 30},
}

monster.immunities = {
		{type = "invisible", condition = true},
		{type = "paralyze", condition = true},
}

monster.voices = {
	interval = 2500,
	chance = 10,
		{text = "Klonk klonk klonk"},
		{text = "Failure! Failire!"},
		{text = "Good morning citizen. How may I serve you?"},
		{text = "Target identified: Rat! Termination initiated!"},
}

monster.loot = {
	{id = 8309, chance = 500, maxCount = 3},
	{id = 2148, chance = 100000, maxCount = 83},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 5880, chance = 700},
			{id = 9808, chance = 900},
			{id = 2207, chance = 1500},
		}
	},
}

mType:register(monster)
