local mType = Game.createMonsterType("Orc Champion")
local monster = {}

monster.description = "an orc guard"
monster.experience = 505
monster.outfit = {
	lookType = 8,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1010
monster.maxHealth = 1010
monster.race = "blood"
monster.corpse = 2864
monster.speed = 350
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 10,
}

monster.strategiesTarget = {
	nearest = 60,
	defense = 40,
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
	canPushCreatures = true,
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 65, attack = 75},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 10, range = 7, target = 1, minDamage = -100, maxDamage = -190, shootEffect = CONST_ANI_REDSTAR},
}

monster.defenses = {
	defense = 12,
	armor = 12,
		{name = "speed", interval = 7000, chance = 60, speedchange = 600, duration = 6000},
}

monster.immunities = {
		{type = "poison", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "CRARRGG GROARR!", yell = true},
}

monster.loot = {
	{id = 2378, chance = 6000},
	{id = 2464, chance = 10000},
	{id = 2458, chance = 11000},
	{id = 2148, chance = 55000, maxCount = 12},
	{id = 2381, chance = 7000},
	{id = 2671, chance = 17000},
	{id = 2044, chance = 8000},
}

mType:register(monster)
