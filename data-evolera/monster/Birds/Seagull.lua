local mType = Game.createMonsterType("Seagull")
local monster = {}

monster.description = "a seagull"
monster.experience = 0
monster.outfit = {
	lookType = 223,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 25
monster.maxHealth = 25
monster.race = "blood"
monster.corpse = 6076
monster.speed = 200
monster.manaCost = 250

monster.changeTarget = {
	interval = 5000,
	chance = 20,
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
	targetDistance = 11,
	runHealth = 10,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 0, attack = 0},
}

monster.defenses = {
	defense = 5,
	armor = 5,
}

mType:register(monster)
