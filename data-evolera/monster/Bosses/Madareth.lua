local mType = Game.createMonsterType("Madareth")
local monster = {}

monster.description = "madareth"
monster.experience = 10000
monster.outfit = {
	lookType = 12,
	lookHead = 77,
	lookBody = 116,
	lookLegs = 82,
	lookFeet = 79,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 55000
monster.maxHealth = 55000
monster.race = "fire"
monster.corpse = 6068
monster.speed = 380
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
	canPushCreatures = true,
	staticAttackChance = 85,
	targetDistance = 1,
	runHealth = 0,
}

monster.defenses = {
	defense = 46,
	armor = 48,
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = 15},
		{type = COMBAT_DEATHDAMAGE, percent = -10},
}

monster.immunities = {
		{type = "energy", condition = true},
		{type = "fire", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 3000,
	chance = 5,
		{text = "I am going to play with yourself!", yell = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2514, chance = 12650},
	{id = 2214, chance = 8000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2145, chance = 5800},
		}
	},
}

mType:register(monster)
