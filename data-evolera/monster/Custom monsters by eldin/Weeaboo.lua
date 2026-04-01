local mType = Game.createMonsterType("Weeaboo")
local monster = {}

monster.description = "a Weeaboo"
monster.experience = 0
monster.outfit = {
	lookType = 313,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 999999999
monster.maxHealth = 999999999
monster.race = "blood"
monster.corpse = 3058
monster.speed = 0
monster.manaCost = 0

monster.changeTarget = {
	interval = 60000,
	chance = 0,
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
	staticAttackChance = 50,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 1000, minDamage = -0, maxDamage = -1},
		{name = "melee", interval = 1000, minDamage = 0, maxDamage = 200},
}

monster.defenses = {
	defense = 0,
	armor = 0,
		{name = "ultimate healing", interval = 1000, chance = 50, minDamage = 175000000, maxDamage = 200000000},
}

monster.immunities = {
		{type = "invisible", condition = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 1949, chance = 10000},
	{id = 2467, chance = 10000},
	{id = 2642, chance = 6666},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2044, chance = 6666},
			{id = 2689, chance = 20000, maxCount = 3},
			{id = 2166, chance = 1428},
		}
	},
}

mType:register(monster)
