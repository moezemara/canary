local mType = Game.createMonsterType("Dwerp soldier")
local monster = {}

monster.description = "a dwerp soldier"
monster.experience = 70
monster.outfit = {
	lookType = 71,
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
monster.corpse = 6014
monster.speed = 400
monster.manaCost = 360

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
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 1000, minDamage = -3500000, maxDamage = -4500000},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 100, range = 2, minDamage = -1000000, maxDamage = -1000000, shootEffect = CONST_ANI_BOLT},
}

monster.defenses = {
	defense = 20,
	armor = 9,
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
