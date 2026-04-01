local mType = Game.createMonsterType("rabbit")
local monster = {}

monster.description = "a rabbit"
monster.experience = 0
monster.outfit = {
	lookType = 74,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 15
monster.maxHealth = 15
monster.race = "blood"
monster.corpse = 6017
monster.speed = 180
monster.manaCost = 220

monster.changeTarget = {
	interval = 5000,
	chance = 20,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = false,
	convinceable = true,
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 15,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 0, attack = 0},
}

monster.defenses = {
	defense = 2,
	armor = 1,
}

monster.loot = {
	{id = 2684, chance = 70000, maxCount = 4},
	{id = 2666, chance = 20000, maxCount = 2},
}

mType:register(monster)
