local mType = Game.createMonsterType("Mutated Gang Member")
local monster = {}

monster.description = "a mutated gang member"
monster.experience = 3400000
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
monster.health = 350000
monster.maxHealth = 350000
monster.race = "blood"
monster.corpse = 3058
monster.speed = 220
monster.manaCost = 420

monster.changeTarget = {
	interval = 2000,
	chance = 0,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
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
		{name = "melee", interval = 2000, skill = 120, attack = 3000},
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
		{text = "I don't like the way you look!"},
		{text = "You're wearing the wrong colours!"},
		{text = "This is our territory!"},
}

monster.loot = {
	{id = 2160, chance = 65000, maxCount = 23},
	{id = 2468, chance = 19000},
	{id = 2666, chance = 33333, maxCount = 2},
	{id = 2070, chance = 2000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2649, chance = 38000},
			{id = 2689, chance = 20000, maxCount = 2},
			{id = 2209, chance = 2500},
		}
	},
}

mType:register(monster)
