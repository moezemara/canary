local mType = Game.createMonsterType("Rift Worm")
local monster = {}

monster.description = "a rift worm"
monster.experience = 1195
monster.outfit = {
	lookType = 295,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 2800
monster.maxHealth = 2800
monster.race = "blood"
monster.corpse = 0
monster.speed = 200
monster.manaCost = 0

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
	illusionable = false,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 50,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 50, attack = 35},
}

monster.defenses = {
	defense = 15,
	armor = 10,
}

monster.immunities = {
		{type = "invisible", condition = true},
}

mType:register(monster)
