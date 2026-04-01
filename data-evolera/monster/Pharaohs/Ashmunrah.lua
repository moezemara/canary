local mType = Game.createMonsterType("ashmunrah")
local monster = {}

monster.description = "a ashmunrah"
monster.experience = 3100
monster.outfit = {
	lookType = 88,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 5000
monster.maxHealth = 5000
monster.race = "undead"
monster.corpse = 6031
monster.speed = 276
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
		{name = "melee", interval = 2000, skill = 150, attack = 74},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 8, range = 1, minDamage = -300, maxDamage = -500},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 12, range = 7, minDamage = -300, maxDamage = -500, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISON},
		{name = "speed", interval = 1000, chance = 25, range = 7, speedchange = -850, duration = 50000, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 30,
	armor = 25,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 20, minDamage = 200, maxDamage = 400},
		{name = "invisible", interval = 1000, chance = 7, duration = 2000},
		{name = "outfit", interval = 1000, chance = 3, duration = 6000},
}

monster.elements = {
		{type = COMBAT_HOLYDAMAGE, percent = -10},
}

monster.immunities = {
		{type = "earth", condition = true},
		{type = "death", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "ancient scarab", chance = 13, interval = 1000, max = 1},
		{name = "green djinn", chance = 12, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Ahhhh all those long years."},
		{text = "No mortal or undead will steal my secrets."},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 4845, chance = 2500},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2148, chance = 100000, maxCount = 45},
			{id = 7590, chance = 3000},
			{id = 2164, chance = 2000},
			{id = 2487, chance = 1500},
			{id = 2140, chance = 1000},
		}
	},
}

mType:register(monster)
