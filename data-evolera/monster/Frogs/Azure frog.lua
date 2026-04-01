local mType = Game.createMonsterType("azure frog")
local monster = {}

monster.description = "a azure frog"
monster.experience = 20
monster.outfit = {
	lookType = 226,
	lookHead = 69,
	lookBody = 66,
	lookLegs = 69,
	lookFeet = 66,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 60
monster.maxHealth = 60
monster.race = "blood"
monster.corpse = 6079
monster.speed = 230
monster.manaCost = 305

monster.changeTarget = {
	interval = 5000,
	chance = 8,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = true,
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
		{name = "melee", interval = 2000, skill = 3, attack = 9},
}

monster.defenses = {
	defense = 8,
	armor = 8,
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "ribbit!ribbit!"},
}

monster.loot = {
	{id = 2148, chance = 60000, maxCount = 9},
	{id = 3976, chance = 53500, maxCount = 4},
}

mType:register(monster)
