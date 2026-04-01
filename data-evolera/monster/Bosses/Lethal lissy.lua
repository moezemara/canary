local mType = Game.createMonsterType("Lethal Lissy")
local monster = {}

monster.description = "lethal lissy"
monster.experience = 500
monster.outfit = {
	lookType = 155,
	lookHead = 77,
	lookBody = 0,
	lookLegs = 76,
	lookFeet = 132,
	lookAddons = 3,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1450
monster.maxHealth = 1450
monster.race = "blood"
monster.corpse = 6081
monster.speed = 240
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
		{name = "melee", interval = 2000, minDamage = -150, maxDamage = -250},
}

monster.defenses = {
	defense = 50,
	armor = 35,
		{name = "combat", type = COMBAT_HEALING, interval = 6000, chance = 65, minDamage = 200, maxDamage = 250},
}

monster.immunities = {
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "Pirate Cutthroat", chance = 50, interval = 2000, max = 1},
}

monster.loot = {
	{id = 6100, chance = 100000},
	{id = 2148, chance = 100000, maxCount = 40},
	{id = 2476, chance = 1200},
	{id = 2387, chance = 1500},
	{id = 2463, chance = 4000},
	{id = 2145, chance = 100000},
	{id = 2320, chance = 100000},
}

mType:register(monster)
