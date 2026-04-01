local mType = Game.createMonsterType("Death Blob")
local monster = {}

monster.description = "a death blob"
monster.experience = 300
monster.outfit = {
	lookType = 315,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 320
monster.maxHealth = 320
monster.race = "undead"
monster.corpse = 9963
monster.speed = 210
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
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
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 85,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 38, attack = 43},
}

monster.defenses = {
	defense = 10,
	armor = 10,
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = -10},
		{type = COMBAT_PHYSICALDAMAGE, percent = 30},
		{type = COMBAT_HOLYDAMAGE, percent = -25},
		{type = COMBAT_ICEDAMAGE, percent = 20},
		{type = COMBAT_ENERGYDAMAGE, percent = -5},
}

monster.summons = {
		{name = "Death Blob", chance = 10, interval = 3000, max = 1},
}

monster.loot = {
	{id = 9968, chance = 18000},
}

mType:register(monster)
