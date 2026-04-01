local mType = Game.createMonsterType("toad")
local monster = {}

monster.description = "a toad"
monster.experience = 60
monster.outfit = {
	lookType = 222,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 135
monster.maxHealth = 135
monster.race = "blood"
monster.corpse = 6077
monster.speed = 240
monster.manaCost = 400

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
	convinceable = false,
	pushable = true,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 20,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -10, maxDamage = -30},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 15, range = 7, minDamage = -5, maxDamage = -20, shootEffect = CONST_ANI_POISON},
}

monster.defenses = {
	defense = 10,
	armor = 12,
}

monster.immunities = {
		{type = "poison", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 30,
		{text = "Ribbit!Ribbit!"},
}

monster.loot = {
	{id = 2148, chance = 60000, maxCount = 12},
	{id = 2666, chance = 12000, maxCount = 2},
	{id = 2667, chance = 10000},
	{id = 2398, chance = 7500},
	{id = 2382, chance = 17000},
	{id = 2391, chance = 400},
}

mType:register(monster)
