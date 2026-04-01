local mType = Game.createMonsterType("Werewolf")
local monster = {}

monster.description = "a werewolf"
monster.experience = 1450
monster.outfit = {
	lookType = 308,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1955
monster.maxHealth = 1955
monster.race = "blood"
monster.corpse = 6080
monster.speed = 320
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
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 100,
}

monster.attacks = {
		{name = "melee", interval = 2000, chance = 100, range = 1, minDamage = -0, maxDamage = -350},
		{name = "outfit", interval = 1000, chance = 9, range = 7, duration = 5000},
}

monster.defenses = {
	defense = 55,
	armor = 50,
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 5},
		{type = COMBAT_ENERGYDAMAGE, percent = 15},
		{type = COMBAT_EARTHDAMAGE, percent = 20},
		{type = COMBAT_FIREDAMAGE, percent = -10},
		{type = COMBAT_DEATHDAMAGE, percent = 20},
		{type = COMBAT_ICEDAMAGE, percent = -10},
		{type = COMBAT_HOLYDAMAGE, percent = -10},
}

monster.immunities = {
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "war wolf", chance = 25, interval = 2500, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "BLOOD!", yell = true},
		{text = "HRAAAAAAAAAARRRRRR!", yell = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 96},
	{id = 2148, chance = 100000, maxCount = 74},
	{id = 5897, chance = 5000},
	{id = 2805, chance = 4000},
	{id = 2647, chance = 3000},
	{id = 8473, chance = 2000},
	{id = 7591, chance = 2000},
	{id = 7588, chance = 2000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 9808, chance = 3000},
			{id = 7439, chance = 2000},
			{id = 7383, chance = 1800},
		}
	},
}

mType:register(monster)
