local mType = Game.createMonsterType("skeleton")
local monster = {}

monster.description = "a skeleton"
monster.experience = 35
monster.outfit = {
	lookType = 33,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 50
monster.maxHealth = 50
monster.race = "undead"
monster.corpse = 5972
monster.speed = 154
monster.manaCost = 300

monster.changeTarget = {
	interval = 2000,
	chance = 0,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 18, attack = 14},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 9, range = 1, minDamage = -7, maxDamage = -13},
}

monster.defenses = {
	defense = 9,
	armor = 2,
}

monster.immunities = {
		{type = "poison", condition = true},
		--{type = "lifedrain", condition = true},
}

monster.loot = {
	{id = 2148, chance = 90000, maxCount = 10},
	{id = 2480, chance = 6666},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2388, chance = 10000},
			{id = 2398, chance = 10000},
			{id = 2511, chance = 5000},
			{id = 2473, chance = 5000},
			{id = 2376, chance = 3333},
			{id = 2050, chance = 20000},
		}
	},
}

mType:register(monster)
