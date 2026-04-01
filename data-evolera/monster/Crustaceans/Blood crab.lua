local mType = Game.createMonsterType("blood crab")
local monster = {}

monster.description = "a blood crab"
monster.experience = 160
monster.outfit = {
	lookType = 200,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 290
monster.maxHealth = 290
monster.race = "blood"
monster.corpse = 6075
monster.speed = 210
monster.manaCost = 505

monster.changeTarget = {
	interval = 5000,
	chance = 8,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = true,
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
		{name = "melee", interval = 2000, minDamage = -0, maxDamage = -85},
}

monster.defenses = {
	defense = 15,
	armor = 10,
}

monster.immunities = {
		{type = "poison", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "invisible", condition = true},
}

mType:register(monster)
