local mType = Game.createMonsterType("Grottworm Queen")
local monster = {}

monster.description = "a rotworm queen"
monster.experience = 900000000
monster.outfit = {
	lookType = 295,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 130500000
monster.maxHealth = 130500000
monster.race = "blood"
monster.corpse = 8947
monster.speed = 200
monster.manaCost = 0

monster.changeTarget = {
	interval = 60000,
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
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 50,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 20, skill = 120, attack = 2700000},
}

monster.defenses = {
	defense = 15,
	armor = 10,
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = -10},
}

monster.summons = {
		{name = "Grottworm", chance = 3, interval = 1000, max = 1},
}

monster.voices = {
	interval = 2000,
	chance = 5,
		{text = "..."},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 86},
	{id = 8877, chance = 20000},
	{id = 3976, chance = 25000, maxCount = 47},
}

mType:register(monster)
