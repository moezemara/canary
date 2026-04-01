local mType = Game.createMonsterType("Penguin")
local monster = {}

monster.description = "Penguin"
monster.experience = 1
monster.outfit = {
	lookType = 250,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 33
monster.maxHealth = 33
monster.race = "blood"
monster.corpse = 7334
monster.speed = 156
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
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 15,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -0, maxDamage = -15},
}

monster.defenses = {
	defense = 0,
	armor = 0,
}

monster.loot = {
	{id = 2148, chance = 12000, maxCount = 10},
	{id = 2669, chance = 32000},
	{id = 2669, chance = 320},
	{id = 2667, chance = 320, maxCount = 2},
}

mType:register(monster)
