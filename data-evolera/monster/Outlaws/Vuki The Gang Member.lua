local mType = Game.createMonsterType("Vuki The Gang Member")
local monster = {}

monster.description = "a gang member"
monster.experience = 70
monster.outfit = {
	lookType = 151,
	lookHead = 114,
	lookBody = 19,
	lookLegs = 42,
	lookFeet = 20,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1500000000
monster.maxHealth = 1500000000
monster.race = "blood"
monster.corpse = 3058
monster.speed = 620
monster.manaCost = 420

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
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 45,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -15000000, maxDamage = -100000000},
}

monster.defenses = {
	defense = 16,
	armor = 14,
}

monster.elements = {
		{type = COMBAT_DEATHDAMAGE, percent = -10},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "This is our territory!"},
		{text = "Help me guys!"},
		{text = "I don't like the way you look!"},
		{text = "You're wearing the wrong colours!"},
}

monster.loot = {
	{id = 2148, chance = 65000, maxCount = 23},
	{id = 2468, chance = 19000},
	{id = 2666, chance = 33333, maxCount = 2},
	{id = 2389, chance = 14500},
	{
		id = 1980, chance = 100000,
		childs = {
			{id = 2649, chance = 38000},
			{id = 2689, chance = 20000, maxCount = 2},
			{id = 2209, chance = 5500},
		}
	},
}

mType:register(monster)
