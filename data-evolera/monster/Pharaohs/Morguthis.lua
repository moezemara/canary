local mType = Game.createMonsterType("morguthis")
local monster = {}

monster.description = "a morguthis"
monster.experience = 3000
monster.outfit = {
	lookType = 85,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 4800
monster.maxHealth = 4800
monster.race = "undead"
monster.corpse = 6025
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
		{name = "melee", interval = 2000, skill = 140, attack = 135},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 1000, chance = 9, radius = 3, target = 0, minDamage = -300, maxDamage = -500, effect = CONST_ME_MORTAREA},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 11, radius = 5, target = 0, minDamage = -150, maxDamage = -400, effect = CONST_ME_BLACKSPARK},
}

monster.defenses = {
	defense = 30,
	armor = 35,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 12, minDamage = 300, maxDamage = 800},
		{name = "speed", interval = 1000, chance = 8, speedchange = 500, duration = 5000},
		{name = "invisible", interval = 1000, chance = 10, duration = 4000},
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = 8},
		{type = COMBAT_FIREDAMAGE, percent = 8},
		{type = COMBAT_ENERGYDAMAGE, percent = 8},
		{type = COMBAT_HOLYDAMAGE, percent = -20},
		{type = COMBAT_EARTHDAMAGE, percent = -10},
}

monster.immunities = {
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "hero", chance = 8, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Vengeance!"},
		{text = "I am the supreme warrior!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2350, chance = 100000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2148, chance = 100000, maxCount = 70},
			{id = 2430, chance = 2000},
			{id = 2443, chance = 1000},
			{id = 2645, chance = 1500},
			{id = 7591, chance = 3000},
			{id = 7368, chance = 4000, maxCount = 4},
		}
	},
}

mType:register(monster)
