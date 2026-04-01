local mType = Game.createMonsterType("Munster")
local monster = {}

monster.description = "a munster"
monster.experience = 23
monster.outfit = {
	lookType = 56,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 58
monster.maxHealth = 58
monster.race = "blood"
monster.corpse = 2813
monster.speed = 200
monster.manaCost = 250

monster.changeTarget = {
	interval = 60000,
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
	staticAttackChance = 80,
	targetDistance = 1,
	runHealth = 10,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -1, maxDamage = -15},
}

monster.defenses = {
	defense = 4,
	armor = 2,
}

monster.summons = {
		{name = "Rat", chance = 20, interval = 2000, max = 1},
}

monster.voices = {
	interval = 2000,
	chance = 5,
		{text = "Meeeeep!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 16},
	{id = 2696, chance = 50000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2687, chance = 5000},
			{id = 2650, chance = 50000},
			{id = 2449, chance = 5000},
		}
	},
}

mType:register(monster)
