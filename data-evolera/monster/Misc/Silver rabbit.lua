local mType = Game.createMonsterType("Silver Rabbit")
local monster = {}

monster.description = "a silver rabbit"
monster.experience = 0
monster.outfit = {
	lookType = 262,
	lookHead = 69,
	lookBody = 66,
	lookLegs = 69,
	lookFeet = 66,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 15
monster.maxHealth = 15
monster.race = "blood"
monster.corpse = 7338
monster.speed = 215
monster.manaCost = 220

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
	illusionable = false,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 50,
	targetDistance = 8,
	runHealth = 0,
}

monster.defenses = {
	defense = 7,
	armor = 6,
}

monster.loot = {
	{id = 2362, chance = 65000},
	{id = 2666, chance = 65000, maxCount = 2},
}

mType:register(monster)
