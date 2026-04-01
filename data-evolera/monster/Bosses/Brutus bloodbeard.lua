local mType = Game.createMonsterType("Brutus Bloodbeard")
local monster = {}

monster.description = "Brutus Bloodbeard"
monster.experience = 500
monster.outfit = {
	lookType = 98,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1200
monster.maxHealth = 1200
monster.race = "blood"
monster.corpse = 6080
monster.speed = 240
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
		{name = "melee", interval = 2000, minDamage = -450, maxDamage = -500},
}

monster.defenses = {
	defense = 50,
	armor = 35,
}

monster.immunities = {
		{type = "invisible", condition = true},
}

monster.loot = {
	{id = 6099, chance = 100000},
	{id = 2148, chance = 100000, maxCount = 40},
	{id = 2476, chance = 1200},
	{id = 2463, chance = 4000},
	{id = 2320, chance = 100000},
}

mType:register(monster)
