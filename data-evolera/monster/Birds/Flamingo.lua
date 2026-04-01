local mType = Game.createMonsterType("flamingo")
local monster = {}

monster.description = "a flamingo"
monster.experience = 0
monster.outfit = {
	lookType = 212,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 25
monster.maxHealth = 25
monster.race = "blood"
monster.corpse = 6054
monster.speed = 180
monster.manaCost = 250

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
	runHealth = 25,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 9, attack = 4},
}

monster.defenses = {
	defense = 6,
	armor = 1,
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 3976, chance = 50000, maxCount = 10},
}

mType:register(monster)
