local mType = Game.createMonsterType("Cockroach")
local monster = {}

monster.description = "a cockroach"
monster.experience = 0
monster.outfit = {
	lookType = 284,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1
monster.maxHealth = 1
monster.race = "venom"
monster.corpse = 8593
monster.speed = 100
monster.manaCost = 0

monster.changeTarget = {
	interval = 60000,
	chance = 0,
}

monster.strategiesTarget = {
	nearest = 0,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = false,
	convinceable = false,
	pushable = true,
	rewardBoss = false,
	illusionable = false,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 50,
	targetDistance = 5,
	runHealth = 1,
}

monster.defenses = {
	defense = 0,
	armor = 0,
}

monster.immunities = {
		{type = "poison", condition = true},
}

monster.loot = {
	{id = 8616, chance = 99999},
}

mType:register(monster)
