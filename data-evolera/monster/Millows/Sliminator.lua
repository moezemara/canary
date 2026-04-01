local mType = Game.createMonsterType("Sliminator")
local monster = {}

monster.description = "a Sliminator"
monster.experience = 160
monster.outfit = {
	lookType = 19,
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
monster.race = "venom"
monster.corpse = 1496
monster.speed = 500
monster.manaCost = 0

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
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 1000, minDamage = -3500000, maxDamage = -4200000},
}

monster.defenses = {
	defense = 0,
	armor = 0,
}

mType:register(monster)
