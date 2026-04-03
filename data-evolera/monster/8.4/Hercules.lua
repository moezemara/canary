local mType = Game.createMonsterType("Hercules")
local monster = {}

monster.description = "a Hercules"
monster.experience = 28000000000
monster.outfit = {
	lookType = 143,
	lookHead = 79,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 1,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 17250000
monster.maxHealth = 17250000
monster.race = "blood"
monster.corpse = 3128
monster.speed = 1200
monster.manaCost = 0

monster.changeTarget = {
	interval = 60000,
	chance = 0,
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
	canPushCreatures = false,
	staticAttackChance = 50,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -400000, maxDamage = -500000},
		{name = "berserk", interval = 300, chance = 70},
}

monster.defenses = {
	defense = 70,
	armor = 80,
}

monster.immunities = {
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 4000,
	chance = 50,
		{text = "Father... I Will Protect You!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2475, chance = 7644},
	{id = 2487, chance = 7644},
	{
		id = 1997, chance = 100000,
		childs = {
			{id = 2488, chance = 7644},
			{id = 2689, chance = 9722, maxCount = 20},
			{id = 2519, chance = 7644},
			{id = 2454, chance = 4811},
		}
	},
}

mType:register(monster)
