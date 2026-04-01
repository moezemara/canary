local mType = Game.createMonsterType("Goblin Demon")
local monster = {}

monster.description = "a goblin demon"
monster.experience = 25
monster.outfit = {
	lookType = 35,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 50
monster.maxHealth = 50
monster.race = "blood"
monster.corpse = 2916
monster.speed = 120
monster.manaCost = 290

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
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 15,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 15, attack = 10},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 9, range = 7, minDamage = -15, maxDamage = -25, shootEffect = CONST_ANI_SMALLSTONE},
}

monster.defenses = {
	defense = 8,
	armor = 6,
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "MUHAHAHAHA!"},
		{text = "I SMELL FEEEEEAAAR!"},
		{text = "CHAMEK ATH UTHUL ARAK!"},
		{text = "Your resistance is futile!"},
		{text = "Your soul will be mine!"},
}

monster.loot = {
	{id = 2230, chance = 12000},
	{id = 2449, chance = 5000},
	{id = 2379, chance = 18000},
	{id = 2667, chance = 13000},
	{id = 2148, chance = 50000, maxCount = 9},
	{id = 2467, chance = 7500},
	{id = 2461, chance = 10000},
	{id = 2235, chance = 7000},
	{id = 2406, chance = 9000},
	{id = 2559, chance = 10000},
	{id = 1294, chance = 30000, maxCount = 3},
}

mType:register(monster)
