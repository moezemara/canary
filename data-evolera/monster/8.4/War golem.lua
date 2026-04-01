local mType = Game.createMonsterType("War Golem")
local monster = {}

monster.description = "a war golem"
monster.experience = 255000
monster.outfit = {
	lookType = 326,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 230000
monster.maxHealth = 230000
monster.race = "undead"
monster.corpse = 10005
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
		{name = "melee", interval = 2000, skill = 70, attack = 80},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1000, chance = 7, range = 7, minDamage = -1000, maxDamage = -2200, shootEffect = CONST_ANI_ENERGY},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 2000, chance = 25, length = 8, spread = 0, minDamage = -1000, maxDamage = -2800, effect = CONST_ME_ENERGY},
		{name = "outfit", interval = 1000, chance = 9, range = 7, duration = 5000},
}

monster.defenses = {
	defense = 45,
	armor = 40,
		{name = "speed", interval = 1000, chance = 9, speedchange = 290, duration = 4000},
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 20, minDamage = 150, maxDamage = 230},
}

monster.elements = {
		{type = COMBAT_EARTHDAMAGE, percent = 50},
		{type = COMBAT_HOLYDAMAGE, percent = 30},
		{type = COMBAT_FIREDAMAGE, percent = 45},
		{type = COMBAT_ENERGYDAMAGE, percent = 25},
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
		{text = "Azerus barada nikto!"},
		{text = "Klonk klonk klonk"},
		{text = "Engaging Enemy!"},
		{text = "Threat level processed."},
		{text = "Charging weapon systems!"},
		{text = "Auto repair in progress."},
		{text = "The battle is joined!"},
		{text = "Termination initialized!"},
		{text = "Rrrtttarrrttarrrtta"},
}

monster.loot = {
	{id = 8309, chance = 50000, maxCount = 5},
	{id = 2148, chance = 100000, maxCount = 170},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 7893, chance = 1200},
			{id = 9980, chance = 800},
			{id = 2645, chance = 700},
			{id = 5880, chance = 15000},
			{id = 7403, chance = 2350},
			{id = 7422, chance = 1111},
		}
	},
}

mType:register(monster)
