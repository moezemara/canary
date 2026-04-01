local mType = Game.createMonsterType("quara hydromancer scout")
local monster = {}

monster.description = "a quara hydromancer scout"
monster.experience = 800
monster.outfit = {
	lookType = 47,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1100
monster.maxHealth = 1100
monster.race = "undead"
monster.corpse = 6066
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
		{name = "melee", interval = 1000, skill = 50, attack = 55},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 12, length = 7, spread = 0, minDamage = -150, maxDamage = -250, effect = CONST_ME_BUBBLES},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 10, length = 7, spread = 0, minDamage = -170, maxDamage = -220, effect = CONST_ME_GREENSHIMMER},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 1000, chance = 12, range = 7, radius = 3, target = 0, minDamage = -130, maxDamage = -165, effect = CONST_ME_BUBBLES},
}

monster.defenses = {
	defense = 18,
	armor = 15,
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = -25},
		{type = COMBAT_EARTHDAMAGE, percent = -10},
}

monster.immunities = {
		{type = "ice", condition = true},
		{type = "fire", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Qua hah tsh!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2670, chance = 20000, maxCount = 5},
	{id = 5895, chance = 2000},
	{id = 2189, chance = 1333},
	{id = 2240, chance = 10000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2143, chance = 1333, maxCount = 2},
			{id = 2144, chance = 1429, maxCount = 2},
			{id = 2214, chance = 1538},
			{id = 2150, chance = 1000, maxCount = 2},
			{id = 2476, chance = 500},
		}
	},
}

mType:register(monster)
