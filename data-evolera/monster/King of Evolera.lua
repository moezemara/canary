local mType = Game.createMonsterType("King of Evolera")
local monster = {}

monster.description = "a Evolera King"
monster.experience = 900000000
monster.outfit = {
	lookType = 332,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 350000000
monster.maxHealth = 350000000
monster.race = "blood"
monster.corpse = 3058
monster.speed = 0
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8,
}

monster.strategiesTarget = {
	nearest = 500,
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
		{name = "melee", interval = 2000, skill = 110, attack = 500000},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1000, chance = 15, range = 7, minDamage = -500065, maxDamage = -600000, shootEffect = CONST_ANI_ENERGY},
		{name = "outfit", interval = 1000, chance = 12, range = 7, duration = 5000},
}

monster.defenses = {
	defense = 45,
	armor = 40,
		{name = "speed", interval = 1000, chance = 9, speedchange = 320, duration = 4000},
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 15, minDamage = 300000, maxDamage = 400000},
}

monster.elements = {
		{type = COMBAT_EARTHDAMAGE, percent = 50},
		{type = COMBAT_HOLYDAMAGE, percent = 50},
		{type = COMBAT_FIREDAMAGE, percent = 15},
		{type = COMBAT_ENERGYDAMAGE, percent = 5},
		{type = COMBAT_PHYSICALDAMAGE, percent = 25},
		{type = COMBAT_ICEDAMAGE, percent = 30},
		{type = COMBAT_DEATHDAMAGE, percent = 30},
}

monster.immunities = {
		{type = "invisible", condition = true},
		{type = "paralyze", condition = true},
}

monster.voices = {
	interval = 2500,
	chance = 10,
		{text = "NO MORE COOKIE, MORE WET PUSSY"},
		{text = "I'm your almighty king!"},
		{text = "Come here you *****!"},
}

monster.loot = {
	{id = 8309, chance = 12000, maxCount = 5},
	{id = 2160, chance = 100000, maxCount = 90},
	{id = 2160, chance = 100000, maxCount = 80},
	{id = 2656, chance = 1325, maxCount = 80},
	{
		id = 2002, chance = 100000,
		childs = {
			{id = 7893, chance = 1800},
			{id = 9980, chance = 6325},
			{id = 2645, chance = 600},
			{id = 2523, chance = 9500},
			{id = 7403, chance = 250},
			{id = 7422, chance = 2000},
		}
	},
}

mType:register(monster)
