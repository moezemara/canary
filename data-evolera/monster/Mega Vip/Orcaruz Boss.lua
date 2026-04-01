local mType = Game.createMonsterType("Orcaruz Boss")
local monster = {}

monster.description = "a orcaruz boss"
monster.experience = 110
monster.outfit = {
	lookType = 4,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 70500000
monster.maxHealth = 70500000
monster.race = "blood"
monster.corpse = 6010
monster.speed = 340
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
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 1000, skill = 95, attack = 17000000},
}

monster.defenses = {
	defense = 20,
	armor = 9,
		{name = "speed", interval = 1000, chance = 7, speedchange = 900, duration = 6000},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "ARGHHH"},
		{text = "Soon you're dead son!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 2666, chance = 50000, maxCount = 3},
	{id = 2129, chance = 10000},
	{
		id = 1988, chance = 20000,
		childs = {
			{id = 2148, chance = 20000},
		}
	},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2428, chance = 2500},
			{id = 2480, chance = 10000},
			{id = 2425, chance = 2000},
			{id = 2513, chance = 6666},
		}
	},
}

mType:register(monster)
