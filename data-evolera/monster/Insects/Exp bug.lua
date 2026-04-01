local mType = Game.createMonsterType("Exp bug")
local monster = {}

monster.description = "a exp bug"
monster.experience = 0
monster.outfit = {
	lookType = 45,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 29
monster.maxHealth = 29
monster.race = "venom"
monster.corpse = 5990
monster.speed = 240
monster.manaCost = 250

monster.changeTarget = {
	interval = 2000,
	chance = 0,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
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
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 4},
	{id = 2679, chance = 50000, maxCount = 3},
}

mType:register(monster)
