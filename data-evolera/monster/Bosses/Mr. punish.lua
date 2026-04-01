local mType = Game.createMonsterType("Mr. Punish")
local monster = {}

monster.description = "a mr. punish"
monster.experience = 5500
monster.outfit = {
	lookType = 234,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 12000
monster.maxHealth = 12000
monster.race = "undead"
monster.corpse = 6331
monster.speed = 470
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 5,
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
	staticAttackChance = 50,
	targetDistance = 1,
	runHealth = 2000,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -660, maxDamage = -1280},
}

monster.defenses = {
	defense = 72,
	armor = 64,
}

monster.immunities = {
		{type = "energy", condition = true},
		{type = "fire", condition = true},
		{type = "poison", condition = true},
		{type = "invisible", condition = true},
}

monster.loot = {
	{id = 6537, chance = 100000},
}

mType:register(monster)
