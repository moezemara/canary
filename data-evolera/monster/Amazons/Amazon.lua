local mType = Game.createMonsterType("amazon")
local monster = {}

monster.description = "a amazon"
monster.experience = 60
monster.outfit = {
	lookType = 137,
	lookHead = 113,
	lookBody = 120,
	lookLegs = 114,
	lookFeet = 132,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 110
monster.maxHealth = 110
monster.race = "blood"
monster.corpse = 6081
monster.speed = 200
monster.manaCost = 390

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
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 10,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 20, attack = 16},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 10, range = 7, minDamage = 0, maxDamage = -40, shootEffect = CONST_ANI_THROWINGKNIFE},
}

monster.defenses = {
	defense = 12,
	armor = 12,
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = -8},
		{type = COMBAT_DEATHDAMAGE, percent = -7},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Yeeee ha!"},
		{text = "Your head shall be mine!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 2467, chance = 20000},
	{id = 2385, chance = 20000},
	{id = 2229, chance = 10000, maxCount = 2},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2691, chance = 20000, maxCount = 2},
			{id = 2050, chance = 20000},
		}
	},
}

mType:register(monster)
