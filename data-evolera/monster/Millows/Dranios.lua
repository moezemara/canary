local mType = Game.createMonsterType("Dranios")
local monster = {}

monster.description = "a dranios"
monster.experience = 200
monster.outfit = {
	lookType = 280,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 550000000
monster.maxHealth = 550000000
monster.race = "blood"
monster.corpse = 7848
monster.speed = 190
monster.manaCost = 490

monster.changeTarget = {
	interval = 60000,
	chance = 0,
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
	canPushCreatures = false,
	staticAttackChance = 60,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 1000, minDamage = -4000000, maxDamage = -4500000},
		{name = "strength", interval = 1000, chance = 100, target = 1, minDamage = -800000, maxDamage = -1200000},
}

monster.defenses = {
	defense = 25,
	armor = 25,
}

monster.voices = {
	interval = 2000,
	chance = 5,
		{text = "Fee! Fie! Foe! Fum!"},
		{text = "Luttl pest!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 24},
}

mType:register(monster)
