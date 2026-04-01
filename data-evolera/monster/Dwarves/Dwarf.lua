local mType = Game.createMonsterType("dwarf")
local monster = {}

monster.description = "a dwarf"
monster.experience = 45
monster.outfit = {
	lookType = 69,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 90
monster.maxHealth = 90
monster.race = "blood"
monster.corpse = 6007
monster.speed = 170
monster.manaCost = 320

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
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 23, attack = 14},
}

monster.defenses = {
	defense = 10,
	armor = 8,
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = -5},
		{type = COMBAT_EARTHDAMAGE, percent = 10},
		{type = COMBAT_DEATHDAMAGE, percent = -4},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Hail Durin!"},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 15},
	{id = 2388, chance = 6666},
	{id = 2386, chance = 5000},
	{id = 2484, chance = 20000},
	{id = 2530, chance = 6666},
	{id = 2649, chance = 10000},
	{id = 5880, chance = 2500, maxCount = 2},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2787, chance = 20000, maxCount = 2},
		}
	},
}

mType:register(monster)
