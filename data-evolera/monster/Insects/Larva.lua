local mType = Game.createMonsterType("larva")
local monster = {}

monster.description = "a larva"
monster.experience = 40
monster.outfit = {
	lookType = 82,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 70
monster.maxHealth = 70
monster.race = "venom"
monster.corpse = 6023
monster.speed = 135
monster.manaCost = 355

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
		{name = "melee", interval = 2000, skill = 25, attack = 25},
}

monster.defenses = {
	defense = 14,
	armor = 14,
}

monster.immunities = {
		{type = "poison", condition = true},
		{type = "paralyze", condition = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 8},
	{id = 2666, chance = 80000},
}

mType:register(monster)
