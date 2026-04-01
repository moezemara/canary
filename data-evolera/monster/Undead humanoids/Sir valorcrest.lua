local mType = Game.createMonsterType("Sir Valorcrest")
local monster = {}

monster.description = "a vampire lord"
monster.experience = 1800
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
monster.health = 1600
monster.maxHealth = 1600
monster.race = "undead"
monster.corpse = 8937
monster.speed = 270
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
		{name = "melee", interval = 2000, skill = 70, attack = 95},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 1000, chance = 12, radius = 4, target = 1, minDamage = 0, maxDamage = -190, effect = CONST_ME_MORTAREA, shootEffect = CONST_ANI_SUDDENDEATH},
}

monster.defenses = {
	defense = 35,
	armor = 38,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 12, minDamage = 100, maxDamage = 235},
		{name = "invisible", interval = 3000, chance = 25, duration = 6000},
}

monster.elements = {
		{type = COMBAT_HOLYDAMAGE, percent = -15},
		{type = COMBAT_FIREDAMAGE, percent = -10},
}

monster.immunities = {
		--{type = "lifedrain", condition = true},
		{type = "death", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "Vampire", chance = 30, interval = 2000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "I challenge you!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 93},
	{id = 2152, chance = 50000, maxCount = 5},
	{id = 8978, chance = 100000},
	{id = 2216, chance = 17111},
	{id = 7598, chance = 16800},
	{id = 2534, chance = 6300},
}

mType:register(monster)
