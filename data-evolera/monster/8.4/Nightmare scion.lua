local mType = Game.createMonsterType("Nightmare Scion")
local monster = {}

monster.description = "a nightmare scion"
monster.experience = 1350
monster.outfit = {
	lookType = 321,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1400
monster.maxHealth = 1400
monster.race = "blood"
monster.corpse = 9919
monster.speed = 390
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 10,
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
	runHealth = 350,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 65, attack = 65},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 12, range = 7, radius = 4, target = 1, minDamage = -0, maxDamage = -180, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISON},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 2000, chance = 20, range = 2, target = 1, minDamage = -0, maxDamage = -125, effect = CONST_ME_MORTAREA, shootEffect = CONST_ANI_SUDDENDEATH},
}

monster.defenses = {
	defense = 25,
	armor = 25,
		{name = "speed", interval = 1000, chance = 24, speedchange = 600, duration = 9000},
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 14, minDamage = 150, maxDamage = 230},
}

monster.elements = {
		{type = COMBAT_HOLYDAMAGE, percent = -25},
		{type = COMBAT_FIREDAMAGE, percent = 45},
		{type = COMBAT_ENERGYDAMAGE, percent = 20},
		{type = COMBAT_ICEDAMAGE, percent = 15},
}

monster.immunities = {
		{type = "earth", condition = true},
		{type = "death", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 7500,
	chance = 20,
		{text = "Weeeheeheee!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 70},
	{id = 2148, chance = 100000, maxCount = 70},
	{id = 2152, chance = 25000, maxCount = 3},
	{id = 2666, chance = 20000, maxCount = 4},
	{id = 6300, chance = 7300},
	{id = 2671, chance = 40000, maxCount = 2},
	{id = 2230, chance = 37500},
	{id = 6574, chance = 1300},
	{id = 6500, chance = 6500},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2387, chance = 8800},
			{id = 2491, chance = 3000},
			{id = 8871, chance = 3400},
			{id = 7451, chance = 1100},
		}
	},
}

mType:register(monster)
