local mType = Game.createMonsterType("elephant")
local monster = {}

monster.description = "a elephant"
monster.experience = 160
monster.outfit = {
	lookType = 211,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 320
monster.maxHealth = 320
monster.race = "blood"
monster.corpse = 6052
monster.speed = 240
monster.manaCost = 500

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
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 48, attack = 47},
}

monster.defenses = {
	defense = 34,
	armor = 20,
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 25},
		{type = COMBAT_ICEDAMAGE, percent = 20},
		{type = COMBAT_ENERGYDAMAGE, percent = -10},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Hooooot-Toooooot!"},
		{text = "Tooooot."},
		{text = "Troooooot!"},
}

monster.loot = {
	{id = 3973, chance = 900},
	{id = 3956, chance = 2000, maxCount = 2},
	{id = 2671, chance = 33333, maxCount = 3},
	{id = 2666, chance = 33333, maxCount = 4},
}

mType:register(monster)
