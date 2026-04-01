local mType = Game.createMonsterType("dark apprentice")
local monster = {}

monster.description = "a dark apprentice"
monster.experience = 100
monster.outfit = {
	lookType = 133,
	lookHead = 39,
	lookBody = 0,
	lookLegs = 19,
	lookFeet = 20,
	lookAddons = 1,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 225
monster.maxHealth = 225
monster.race = "blood"
monster.corpse = 3058
monster.speed = 220
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
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1000, chance = 15, range = 7, minDamage = -15, maxDamage = -25, shootEffect = CONST_ANI_ENERGY},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 15, range = 7, minDamage = -15, maxDamage = -25, shootEffect = CONST_ANI_FIRE},
		{name = "melee", interval = 1000, chance = 15, range = 7, minDamage = -5, maxDamage = -25, shootEffect = CONST_ANI_SMALLSTONE},
		{name = "outfit", interval = 1000, chance = 10, range = 7, duration = 6000, effect = CONST_ME_GREENSHIMMER},
		{name = "outfit", interval = 2000, chance = 15, range = 7, radius = 3, target = 1, duration = 6000, effect = CONST_ME_GREENSHIMMER},
}

monster.defenses = {
	defense = 19,
	armor = 10,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 13, minDamage = 15, maxDamage = 35},
}

monster.elements = {
		{type = COMBAT_DEATHDAMAGE, percent = -10},
}

monster.immunities = {
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Outch!"},
		{text = "I must dispose of my masters enemies!"},
		{text = "Oops, I did it again."},
		{text = "From the spirits that I called Sir, deliver me!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 50},
	{id = 7620, chance = 2000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 5934, chance = 50000},
			{id = 2260, chance = 30000},
			{id = 2260, chance = 20000},
			{id = 2260, chance = 20000},
			{id = 7620, chance = 1800},
			{id = 2188, chance = 2500},
		}
	},
}

mType:register(monster)
