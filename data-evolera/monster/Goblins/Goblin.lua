local mType = Game.createMonsterType("goblin")
local monster = {}

monster.description = "a goblin"
monster.experience = 25
monster.outfit = {
	lookType = 61,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 50
monster.maxHealth = 50
monster.race = "blood"
monster.corpse = 6002
monster.speed = 200
monster.manaCost = 290

monster.changeTarget = {
	interval = 5000,
	chance = 8,
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
		{text = "Me have him!"},
		{text = "Zig Zag! Gobo attack!"},
		{text = "Help! Goblinkiller!"},
		{text = "Bugga! Bugga!"},
		{text = "Me green, me mean!"},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 10},
	{id = 2420, chance = 10000},
	{id = 2461, chance = 10000},
	{id = 2406, chance = 10000},
	{id = 2467, chance = 10000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2559, chance = 10000},
			{id = 1294, chance = 20000, maxCount = 4},
			{id = 2667, chance = 20000, maxCount = 2},
			{id = 2230, chance = 10000},
			{id = 2235, chance = 10000},
			{id = 2449, chance = 10000},
		}
	},
}

mType:register(monster)
