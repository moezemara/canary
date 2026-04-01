local mType = Game.createMonsterType("poacher")
local monster = {}

monster.description = "a poacher"
monster.experience = 150
monster.outfit = {
	lookType = 129,
	lookHead = 95,
	lookBody = 116,
	lookLegs = 121,
	lookFeet = 115,
	lookAddons = 1,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 150
monster.maxHealth = 150
monster.race = "blood"
monster.corpse = 6080
monster.speed = 215
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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 10,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 20, attack = 20},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 18, range = 7, minDamage = 0, maxDamage = -35, shootEffect = CONST_ANI_ARROW},
}

monster.defenses = {
	defense = 10,
	armor = 8,
}

monster.immunities = {
		{type = "poison", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "You will not live to tell anyone!"},
		{text = "You are my game today!"},
}

monster.loot = {
	{id = 2649, chance = 100000, maxCount = 2},
	{id = 2461, chance = 10000},
	{id = 2649, chance = 10000},
	{id = 2671, chance = 20000, maxCount = 2},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2456, chance = 4444},
			{id = 2544, chance = 10000, maxCount = 17},
			{id = 2545, chance = 10000, maxCount = 3},
			{id = 2050, chance = 20000},
			{id = 2579, chance = 2222},
		}
	},
}

mType:register(monster)
