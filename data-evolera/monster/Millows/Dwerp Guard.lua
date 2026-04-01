local mType = Game.createMonsterType("dwerp guard")
local monster = {}

monster.description = "a dwerp guard"
monster.experience = 165
monster.outfit = {
	lookType = 70,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1000000000
monster.maxHealth = 1000000000
monster.race = "blood"
monster.corpse = 6013
monster.speed = 0
monster.manaCost = 650

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
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 1000, minDamage = -7000000, maxDamage = -8000000},
}

monster.defenses = {
	defense = 30,
	armor = 25,
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Hail Dwerpin!"},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
}

mType:register(monster)
