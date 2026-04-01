local mType = Game.createMonsterType("stone golem")
local monster = {}

monster.description = "a stone golem"
monster.experience = 280
monster.outfit = {
	lookType = 67,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 270
monster.maxHealth = 270
monster.race = "undead"
monster.corpse = 6005
monster.speed = 180
monster.manaCost = 590

monster.changeTarget = {
	interval = 5000,
	chance = 8,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 52, attack = 38},
}

monster.defenses = {
	defense = 18,
	armor = 10,
}

monster.immunities = {
		{type = "fire", condition = true},
		{type = "poison", condition = true},
		{type = "paralyze", condition = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 2483, chance = 10000},
	{id = 5880, chance = 2500, maxCount = 2},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 1295, chance = 10000},
			{id = 1294, chance = 20000, maxCount = 5},
			{id = 2395, chance = 2500},
			{id = 2050, chance = 20000},
			{id = 2580, chance = 5000},
		}
	},
}

mType:register(monster)
