local mType = Game.createMonsterType("Hacker")
local monster = {}

monster.description = "a Hacker"
monster.experience = 45
monster.outfit = {
	lookType = 8,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 430
monster.maxHealth = 430
monster.race = "blood"
monster.corpse = 5980
monster.speed = 250
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
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 429,
}

monster.attacks = {
		{name = "melee", interval = 1000, skill = 20, attack = 55},
}

monster.defenses = {
	defense = 12,
	armor = 15,
		{name = "speed", interval = 1000, chance = 15, speedchange = 290, duration = 6000},
		{name = "outfit", interval = 10000, chance = 15, duration = 500},
}

monster.immunities = {
		{type = "energy", condition = true},
		{type = "fire", condition = true},
		{type = "poison", condition = true},
		{type = "drunk", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Feel the wrath of me dos attack!"},
		{text = "You're next!"},
		{text = "Gimme free gold!"},
		{text = "Me sooo smart!"},
		{text = "Me have a cheating link for you!"},
		{text = "Me is GM!"},
		{text = "Gimme your password!"},
		{text = "Me just need the code!"},
		{text = "Me not stink!"},
		{text = "Me other char is highlevel!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 12},
	{id = 2671, chance = 50000},
	{id = 6570, chance = 5538},
	{id = 6571, chance = 1538},
	{id = 2044, chance = 6666},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2381, chance = 10000},
			{id = 2386, chance = 10000},
			{id = 2391, chance = 5000},
			{id = 2378, chance = 5000},
		}
	},
}

mType:register(monster)
