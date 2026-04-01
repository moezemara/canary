local mType = Game.createMonsterType("polar bear")
local monster = {}

monster.description = "a polar bear"
monster.experience = 28
monster.outfit = {
	lookType = 42,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 85
monster.maxHealth = 85
monster.race = "blood"
monster.corpse = 5987
monster.speed = 156
monster.manaCost = 315

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
	runHealth = 5,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 19, attack = 18},
}

monster.defenses = {
	defense = 10,
	armor = 7,
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = 20},
		{type = COMBAT_ENERGYDAMAGE, percent = -10},
		{type = COMBAT_DEATHDAMAGE, percent = -10},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Grrrrrr"},
		{text = "GROARRR!", yell = true},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2671, chance = 90000, maxCount = 4},
	{id = 2666, chance = 80000, maxCount = 3},
}

mType:register(monster)
