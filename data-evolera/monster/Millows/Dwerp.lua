local mType = Game.createMonsterType("dwerp")
local monster = {}

monster.description = "a dwerp"
monster.experience = 45
monster.outfit = {
	lookType = 69,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 500000000
monster.maxHealth = 500000000
monster.race = "blood"
monster.corpse = 6007
monster.speed = 400
monster.manaCost = 320

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
	convinceable = false,
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
		{name = "melee", interval = 1000, minDamage = -3000000, maxDamage = -4000000},
}

monster.defenses = {
	defense = 10,
	armor = 8,
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
