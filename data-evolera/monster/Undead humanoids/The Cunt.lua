local mType = Game.createMonsterType("The Cunt")
local monster = {}

monster.description = "a The cunt"
monster.experience = 1750
monster.outfit = {
	lookType = 287,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 760500000
monster.maxHealth = 760500000
monster.race = "undead"
monster.corpse = 8937
monster.speed = 570
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 10,
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
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 20, skill = 130, attack = 600000},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 9, radius = 4, target = 0, minDamage = 0, maxDamage = -300, effect = CONST_ME_SMALLCLOUDS},
}

monster.defenses = {
	defense = 30,
	armor = 30,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 25, minDamage = 15050000, maxDamage = 16050000},
		{name = "invisible", interval = 300, chance = 50, duration = 6000},
}

monster.elements = {
		{type = COMBAT_HOLYDAMAGE, percent = -20},
}

monster.immunities = {
		--{type = "lifedrain", condition = true},
		{type = "death", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "Grim Raper", chance = 50, interval = 4000, max = 1},
}

monster.loot = {
	{id = 2148, chance = 40000, maxCount = 98},
	{id = 8752, chance = 100000},
	{id = 2391, chance = 2300},
}

mType:register(monster)
