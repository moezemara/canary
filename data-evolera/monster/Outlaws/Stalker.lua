local mType = Game.createMonsterType("stalker")
local monster = {}

monster.description = "a stalker"
monster.experience = 90
monster.outfit = {
	lookType = 128,
	lookHead = 95,
	lookBody = 116,
	lookLegs = 95,
	lookFeet = 114,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 150
monster.maxHealth = 150
monster.race = "blood"
monster.corpse = 6080
monster.speed = 210
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
		{name = "melee", interval = 2000, skill = 40, attack = 30},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 100, range = 1, minDamage = -20, maxDamage = -30, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 10,
	armor = 14,
		{name = "invisible", interval = 1000, chance = 25, duration = 9000},
}

monster.immunities = {
		--{type = "lifedrain", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 2649, chance = 6666},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2260, chance = 4000},
			{id = 2399, chance = 20000},
			{id = 2478, chance = 3333},
			{id = 2425, chance = 2000},
		}
	},
}

mType:register(monster)
