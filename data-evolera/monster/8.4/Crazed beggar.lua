local mType = Game.createMonsterType("Crazed Beggar")
local monster = {}

monster.description = "a crazed beggar"
monster.experience = 35
monster.outfit = {
	lookType = 153,
	lookHead = 59,
	lookBody = 38,
	lookLegs = 38,
	lookFeet = 97,
	lookAddons = 3,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 100
monster.maxHealth = 100
monster.race = "blood"
monster.corpse = 3058
monster.speed = 220
monster.manaCost = 300

monster.changeTarget = {
	interval = 4000,
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
	staticAttackChance = 80,
	targetDistance = 1,
	runHealth = 10,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 13, attack = 15},
}

monster.defenses = {
	defense = 16,
	armor = 11,
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 5},
		{type = COMBAT_ENERGYDAMAGE, percent = 20},
		{type = COMBAT_HOLYDAMAGE, percent = 10},
}

monster.voices = {
	interval = 4000,
	chance = 16,
		{text = "You are one of THEM! Die!"},
		{text = "Wanna buy roses??"},
}

monster.loot = {
	{id = 2148, chance = 30000, maxCount = 9},
	{id = 2666, chance = 19000, maxCount = 3},
	{id = 2237, chance = 27000},
	{id = 2744, chance = 11000},
	{id = 2370, chance = 8000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2690, chance = 11290},
			{id = 2567, chance = 33000},
			{id = 1681, chance = 5500},
			{id = 2213, chance = 1500},
			{id = 9808, chance = 3500},
		}
	},
}

mType:register(monster)
