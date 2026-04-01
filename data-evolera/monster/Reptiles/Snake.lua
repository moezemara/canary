local mType = Game.createMonsterType("snake")
local monster = {}

monster.description = "a snake"
monster.experience = 10
monster.outfit = {
	lookType = 28,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 15
monster.maxHealth = 15
monster.race = "blood"
monster.corpse = 2817
monster.speed = 120
monster.manaCost = 205

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
		{name = "melee", interval = 2000, skill = 11, attack = 5},
}

monster.defenses = {
	defense = 1,
	armor = 0,
}

monster.immunities = {
		{type = "poison", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Zzzzzzt"},
}

mType:register(monster)
