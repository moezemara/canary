local mType = Game.createMonsterType("Squirrel")
local monster = {}

monster.description = "a squirrel"
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
monster.corpse = 3119
monster.speed = 160
monster.manaCost = 200

monster.changeTarget = {
	interval = 60000,
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
	staticAttackChance = 50,
	targetDistance = 8,
	runHealth = 15,
}

monster.defenses = {
	defense = 1,
	armor = 0,
}

monster.voices = {
	interval = 60000,
	chance = 0,
		{text = "ChChCh"},
}

monster.loot = {
	{id = 2684, chance = 70000, maxCount = 4},
	{id = 2666, chance = 20000, maxCount = 2},
	{id = 6541, chance = 100},
	{id = 6542, chance = 100},
	{id = 6543, chance = 100},
	{id = 6544, chance = 100},
	{id = 6545, chance = 100},
	{id = 1989, chance = 250},
}

mType:register(monster)
