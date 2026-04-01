local mType = Game.createMonsterType("dark magician")
local monster = {}

monster.description = "a dark magician"
monster.experience = 185
monster.outfit = {
	lookType = 133,
	lookHead = 39,
	lookBody = 0,
	lookLegs = 19,
	lookFeet = 20,
	lookAddons = 2,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 325
monster.maxHealth = 325
monster.race = "blood"
monster.corpse = 3058
monster.speed = 230
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
	targetDistance = 4,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 25, attack = 20},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1000, chance = 20, range = 7, minDamage = -20, maxDamage = -35, shootEffect = CONST_ANI_ENERGY},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 15, range = 7, minDamage = -10, maxDamage = -40, shootEffect = CONST_ANI_FIRE},
}

monster.defenses = {
	defense = 20,
	armor = 20,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 13, minDamage = 35, maxDamage = 75},
		{name = "speed", interval = 1000, chance = 10, speedchange = 200, duration = 2000},
}

monster.elements = {
		{type = COMBAT_DEATHDAMAGE, percent = -10},
		{type = COMBAT_FIREDAMAGE, percent = 10},
		{type = COMBAT_EARTHDAMAGE, percent = 20},
		{type = COMBAT_ENERGYDAMAGE, percent = 20},
		{type = COMBAT_ICEDAMAGE, percent = 10},
		{type = COMBAT_HOLYDAMAGE, percent = 20},
}

monster.immunities = {
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Feel the power of my runes!"},
		{text = "Killing you is getting expensive"},
		{text = "My secrets are mine alone!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 60},
	{id = 7620, chance = 3200},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 5934, chance = 50000},
			{id = 2260, chance = 30000},
			{id = 2260, chance = 20000},
			{id = 2260, chance = 20000},
			{id = 7762, chance = 600},
		}
	},
}

mType:register(monster)
