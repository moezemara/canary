local mType = Game.createMonsterType("crab")
local monster = {}

monster.description = "a crab"
monster.experience = 30
monster.outfit = {
	lookType = 112,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 55
monster.maxHealth = 55
monster.race = "blood"
monster.corpse = 6039
monster.speed = 180
monster.manaCost = 305

monster.changeTarget = {
	interval = 2000,
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
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 25, attack = 15},
}

monster.defenses = {
	defense = 5,
	armor = 5,
}

monster.immunities = {
		{type = "poison", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "crab crab!"},
}

mType:register(monster)
