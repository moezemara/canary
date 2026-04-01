local mType = Game.createMonsterType("quara constrictor scout")
local monster = {}

monster.description = "a quara constrictor scout"
monster.experience = 250
monster.outfit = {
	lookType = 46,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 450
monster.maxHealth = 450
monster.race = "undead"
monster.corpse = 6065
monster.speed = 290
monster.manaCost = 670

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
	convinceable = true,
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
		{name = "melee", interval = 2000, skill = 65, attack = 55},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 13, radius = 3, target = 0, minDamage = -50, maxDamage = -90, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 15,
	armor = 15,
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = -10},
		{type = COMBAT_PHYSICALDAMAGE, percent = -5},
}

monster.immunities = {
		{type = "fire", condition = true},
		{type = "ice", condition = true},
}

monster.loot = {
	{id = 2670, chance = 20000, maxCount = 5},
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 2150, chance = 2222, maxCount = 3},
	{id = 2397, chance = 3333},
	{id = 2381, chance = 2222},
	{id = 2460, chance = 4000},
	{id = 2465, chance = 2857},
	{id = 5895, chance = 1800},
}

mType:register(monster)
