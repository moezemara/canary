local mType = Game.createMonsterType("badger")
local monster = {}

monster.description = "a badger"
monster.experience = 5
monster.outfit = {
	lookType = 105,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 20
monster.maxHealth = 20
monster.race = "blood"
monster.corpse = 6034
monster.speed = 180
monster.manaCost = 200

monster.changeTarget = {
	interval = 2000,
	chance = 20,
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
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 10,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 17, attack = 10},
}

monster.defenses = {
	defense = 3,
	armor = 1,
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2671, chance = 50000},
}

mType:register(monster)
