local mType = Game.createMonsterType("Husky")
local monster = {}

monster.description = "a husky"
monster.experience = 0
monster.outfit = {
	lookType = 258,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 140
monster.maxHealth = 140
monster.race = "blood"
monster.corpse = 0
monster.speed = 195
monster.manaCost = 420

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
	runHealth = 8,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 0, attack = 0},
}

monster.defenses = {
	defense = 4,
	armor = 1,
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Yoooohuuuu!"},
		{text = "Grrrrrrr"},
		{text = "Ruff, ruff!"},
}

mType:register(monster)
