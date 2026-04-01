local mType = Game.createMonsterType("Pirate Skeleton")
local monster = {}

monster.description = "a pirate skeleton"
monster.experience = 85
monster.outfit = {
	lookType = 195,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 190
monster.maxHealth = 190
monster.race = "undead"
monster.corpse = 6070
monster.speed = 230
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
		{name = "melee", interval = 2000, minDamage = -10, maxDamage = -80},
}

monster.defenses = {
	defense = 19,
	armor = 18,
}

monster.elements = {
		{type = COMBAT_DEATHDAMAGE, percent = 100},
		{type = COMBAT_HOLYDAMAGE, percent = -20},
}

monster.loot = {
	{id = 2148, chance = 40000, maxCount = 25},
}

mType:register(monster)
