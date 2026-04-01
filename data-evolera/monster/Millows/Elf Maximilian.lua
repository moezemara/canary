local mType = Game.createMonsterType("elf maximilian")
local monster = {}

monster.description = "a elf maximilian"
monster.experience = 75
monster.outfit = {
	lookType = 64,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 684000000
monster.maxHealth = 684000000
monster.race = "blood"
monster.corpse = 6012
monster.speed = 350
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
	targetDistance = 4,
	runHealth = 0,
}

monster.attacks = {
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 100, range = 1, minDamage = -4900000, maxDamage = -5400000, shootEffect = CONST_ANI_ARROW},
}

monster.defenses = {
	defense = 18,
	armor = 7,
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Tha'shi Ab'Dendriel!"},
		{text = "Feel the sting of my arrows!"},
		{text = "Thy blood will quench the soil's thirst!"},
		{text = "Evicor guide my arrow."},
		{text = "Your existence will end here!"},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
}

mType:register(monster)
