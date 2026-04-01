local mType = Game.createMonsterType("Mimic")
local monster = {}

monster.description = "a mimic"
monster.experience = 70
monster.outfit = {
	lookType = 92,
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
monster.race = "blood"
monster.corpse = 1740
monster.speed = 1000
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
	pushable = true,
	rewardBoss = false,
	illusionable = false,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 23, attack = 9},
}

monster.defenses = {
	defense = 3,
	armor = 2,
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 3},
}

mType:register(monster)
