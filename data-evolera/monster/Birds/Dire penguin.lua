local mType = Game.createMonsterType("Dire Penguin")
local monster = {}

monster.description = "Dire Penguin"
monster.experience = 120
monster.outfit = {
	lookType = 250,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 173
monster.maxHealth = 173
monster.race = "blood"
monster.corpse = 7334
monster.speed = 156
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
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
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 25, attack = 25},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 20, range = 7, minDamage = -0, maxDamage = -60, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA},
}

monster.defenses = {
	defense = 0,
	armor = 0,
}

monster.immunities = {
		{type = "fire", condition = true},
		{type = "outfit", condition = true},
}

monster.loot = {
	{id = 2148, chance = 18000, maxCount = 10},
	{id = 2669, chance = 12000},
}

mType:register(monster)
