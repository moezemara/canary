local mType = Game.createMonsterType("green djinn")
local monster = {}

monster.description = "a green djinn"
monster.experience = 225
monster.outfit = {
	lookType = 51,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 330
monster.maxHealth = 330
monster.race = "venom"
monster.corpse = 6016
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
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -60, maxDamage = -120},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 50, range = 7, minDamage = -45, maxDamage = -75, shootEffect = CONST_ANI_FIRE},
		--{name = "energycondition", interval = 2000, chance = 34, range = 7, minDamage = -50, maxDamage = -90, shootEffect = CONST_ANI_ENERGY},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 3000, chance = 25, range = 7, minDamage = -55, maxDamage = -105, shootEffect = CONST_ANI_SUDDENDEATH},
		{name = "drunk", interval = 1000, chance = 20, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA},
		{name = "outfit", interval = 1000, chance = 17, range = 7, duration = 30000, effect = CONST_ME_BLUESHIMMER},
}

monster.defenses = {
	defense = 10,
	armor = 18,
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = 25},
		{type = COMBAT_EARTHDAMAGE, percent = 40},
		{type = COMBAT_ENERGYDAMAGE, percent = 60},
		{type = COMBAT_ICEDAMAGE, percent = -10},
}

monster.immunities = {
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "I grant you a deathwish!"},
		{text = "Muhahahaha!"},
		{text = "I wish you a merry trip to hell!"},
		{text = "Tell me your last wish!"},
		{text = "Good wishes are for fairytales"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 2696, chance = 10000},
	{id = 2747, chance = 10000},
	{id = 7378, chance = 2000, maxCount = 2},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2062, chance = 5000},
			{id = 2148, chance = 100000, maxCount = 20},
			{id = 2176, chance = 2000},
		}
	},
}

mType:register(monster)
