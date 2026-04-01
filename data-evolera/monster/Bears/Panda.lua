local mType = Game.createMonsterType("Panda")
local monster = {}

monster.description = "a panda"
monster.experience = 23
monster.outfit = {
	lookType = 123,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 80
monster.maxHealth = 80
monster.race = "blood"
monster.corpse = 6049
monster.speed = 240
monster.manaCost = 300

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
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 15,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 14, attack = 15},
}

monster.defenses = {
	defense = 8,
	armor = 8,
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = 1},
}

monster.immunities = {
		{type = "earth", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Grrrr"},
		{text = "Groar"},
}

monster.loot = {
	{id = 2671, chance = 33333, maxCount = 10},
	{id = 2666, chance = 33333, maxCount = 15},
	{id = 3976, chance = 50000, maxCount = 10},
}

mType:register(monster)
