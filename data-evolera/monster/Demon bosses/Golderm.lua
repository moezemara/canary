local mType = Game.createMonsterType("Golderm")
local monster = {}

monster.description = "a Golderm"
monster.experience = 3000000
monster.outfit = {
	lookType = 12,
	lookHead = 76,
	lookBody = 76,
	lookLegs = 76,
	lookFeet = 76,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 500000
monster.maxHealth = 500000
monster.race = "blood"
monster.corpse = 6068
monster.speed = 190
monster.manaCost = 550

monster.changeTarget = {
	interval = 2000,
	chance = 5,
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
	canPushCreatures = false,
	staticAttackChance = 50,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "Eternal Winter", interval = 2000, minDamage = -2000, maxDamage = -8000},
		{name = "Ice Strike", interval = 2000, minDamage = -3000, maxDamage = -7000},
}

monster.defenses = {
	defense = 22,
	armor = 15,
}

monster.loot = {
	{id = 2472, chance = 8000},
	{id = 8209, chance = 7500},
	{id = 2471, chance = 4000},
}

mType:register(monster)
