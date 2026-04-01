local mType = Game.createMonsterType("Gladiator")
local monster = {}

monster.description = "a gladiator"
monster.experience = 90
monster.outfit = {
	lookType = 131,
	lookHead = 78,
	lookBody = 3,
	lookLegs = 79,
	lookFeet = 114,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 185
monster.maxHealth = 185
monster.race = "blood"
monster.corpse = 3058
monster.speed = 200
monster.manaCost = 470

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
	illusionable = false,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 10,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 70, attack = 30},
}

monster.defenses = {
	defense = 22,
	armor = 20,
		{name = "speed", interval = 1000, chance = 9, speedchange = 215, duration = 5000},
}

monster.elements = {
		{type = COMBAT_HOLYDAMAGE, percent = 10},
		{type = COMBAT_PHYSICALDAMAGE, percent = 15},
		{type = COMBAT_DEATHDAMAGE, percent = -10},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "You are no match for me!"},
		{text = "Feel my prowess"},
		{text = "Fight!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 8872, chance = 6000},
	{id = 2666, chance = 25000, maxCount = 2},
	{id = 2465, chance = 9500},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2398, chance = 18000},
			{id = 2459, chance = 4500},
			{id = 2510, chance = 9500},
			{id = 2509, chance = 15000},
		}
	},
}

mType:register(monster)
