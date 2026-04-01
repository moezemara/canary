local mType = Game.createMonsterType("kongra")
local monster = {}

monster.description = "a kongra"
monster.experience = 115
monster.outfit = {
	lookType = 116,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 340
monster.maxHealth = 340
monster.race = "blood"
monster.corpse = 6043
monster.speed = 200
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 20,
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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 10,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 25, attack = 22},
}

monster.defenses = {
	defense = 14,
	armor = 18,
		{name = "speed", interval = 1000, chance = 7, speedchange = 260, duration = 3000},
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = 20},
		{type = COMBAT_HOLYDAMAGE, percent = 10},
		{type = COMBAT_ENERGYDAMAGE, percent = 5},
		{type = COMBAT_ICEDAMAGE, percent = -15},
		{type = COMBAT_DEATHDAMAGE, percent = -5},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Hugah!"},
		{text = "Ungh! Ungh!"},
		{text = "Huaauaauaauaa!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 40},
	{id = 1294, chance = 2500, maxCount = 3},
	{id = 5883, chance = 1000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2676, chance = 5000, maxCount = 11},
			{id = 2200, chance = 2000},
			{id = 2209, chance = 2857},
			{id = 2166, chance = 4300},
			{id = 2463, chance = 1667},
		}
	},
}

mType:register(monster)
