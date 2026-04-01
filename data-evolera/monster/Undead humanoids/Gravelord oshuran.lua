local mType = Game.createMonsterType("Gravelord Oshuran")
local monster = {}

monster.description = "the gravelord oshuran"
monster.experience = 2400
monster.outfit = {
	lookType = 99,
	lookHead = 95,
	lookBody = 116,
	lookLegs = 119,
	lookFeet = 115,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 3100
monster.maxHealth = 3100
monster.race = "undead"
monster.corpse = 6028
monster.speed = 280
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
		{name = "melee", interval = 2000, skill = 70, attack = 60},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 3000, chance = 9, range = 8, minDamage = -50, maxDamage = -250, effect = CONST_ME_BLUESHIMMER},
		{name = "speed", interval = 1000, chance = 15, range = 7, speedchange = -700, duration = 30000, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 9, length = 8, spread = 0, minDamage = -100, maxDamage = -200, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 3000, chance = 9, length = 8, spread = 0, minDamage = -300, maxDamage = -400, effect = CONST_ME_GREENSPARK},
}

monster.defenses = {
	defense = 20,
	armor = 20,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 17, minDamage = 50, maxDamage = 150},
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = 80},
		{type = COMBAT_HOLYDAMAGE, percent = -20},
}

monster.immunities = {
		{type = "death", condition = true},
		{type = "earth", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "bonebeast", chance = 17, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Your mortality is disgusting", yell = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 40},
	{id = 7893, chance = 9000},
	{id = 2656, chance = 7000},
	{id = 8978, chance = 100000},
	{id = 2144, chance = 66666, maxCount = 2},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2165, chance = 8888},
			{id = 2143, chance = 44444},
			{id = 2148, chance = 80000, maxCount = 57},
			{id = 8904, chance = 13000},
		}
	},
}

mType:register(monster)
