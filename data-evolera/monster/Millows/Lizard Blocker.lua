local mType = Game.createMonsterType("Lizard Blocker")
local monster = {}

monster.description = "a lizard blocker"
monster.experience = 0
monster.outfit = {
	lookType = 113,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 5000000000
monster.maxHealth = 5000000000
monster.race = "undead"
monster.corpse = 4256
monster.speed = 150
monster.manaCost = 590

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
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -7000000, maxDamage = -9000000},
		{name = "berserk", interval = 2000, chance = 70, minDamage = -2000000, maxDamage = -4000000},
}

monster.defenses = {
	defense = 18,
	armor = 10,
}

monster.immunities = {
		{type = "paralyze", condition = true},
}

monster.voices = {
	interval = 10000,
	chance = 100,
		{text = "YOU SHALL NOT PASS!"},
}

mType:register(monster)
