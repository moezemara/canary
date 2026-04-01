local mType = Game.createMonsterType("mammoth")
local monster = {}

monster.description = "a mammoth"
monster.experience = 160
monster.outfit = {
	lookType = 199,
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
monster.race = "blood"
monster.corpse = 6074
monster.speed = 240
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
	pushable = true,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 45, attack = 45},
}

monster.defenses = {
	defense = 30,
	armor = 25,
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = -10},
		{type = COMBAT_EARTHDAMAGE, percent = 20},
		{type = COMBAT_PHYSICALDAMAGE, percent = 15},
		{type = COMBAT_ICEDAMAGE, percent = 20},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Moohhhhooooo!"},
}

monster.loot = {
	{id = 2666, chance = 33333, maxCount = 4},
	{id = 2671, chance = 10000, maxCount = 3},
}

mType:register(monster)
