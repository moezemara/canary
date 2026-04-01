local mType = Game.createMonsterType("Goblin Assassin")
local monster = {}

monster.description = "a goblin assassin"
monster.experience = 52
monster.outfit = {
	lookType = 296,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 75
monster.maxHealth = 75
monster.race = "blood"
monster.corpse = 6002
monster.speed = 220
monster.manaCost = 360

monster.changeTarget = {
	interval = 10000,
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
	runHealth = 15,
}

monster.attacks = {
		{name = "melee", interval = 2000, maxDamage = -15},
		{name = "drunk", interval = 5000, chance = 15, duration = 10000, effect = CONST_ME_POISON},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 9, range = 6, minDamage = -15, maxDamage = -25, shootEffect = CONST_ANI_THROWINGKNIFE},
}

monster.defenses = {
	defense = 15,
	armor = 15,
		{name = "invisible", interval = 7500, chance = 10, duration = 5000},
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = 10},
		{type = COMBAT_EARTHDAMAGE, percent = -10},
		{type = COMBAT_HOLYDAMAGE, percent = 5},
		{type = COMBAT_DEATHDAMAGE, percent = -15},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Goblin Powahhh!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 9},
	{id = 2667, chance = 20000},
	{id = 2235, chance = 10000},
	{id = 2461, chance = 10000},
	{id = 2230, chance = 10000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 1294, chance = 20000, maxCount = 3},
			{id = 2449, chance = 10000},
			{id = 2406, chance = 10000},
			{id = 2559, chance = 10000},
			{id = 2379, chance = 10000},
		}
	},
}

mType:register(monster)
