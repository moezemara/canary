local mType = Game.createMonsterType("Thul")
local monster = {}

monster.description = "thul"
monster.experience = 1800
monster.outfit = {
	lookType = 46,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 3000
monster.maxHealth = 3000
monster.race = "undead"
monster.corpse = 6065
monster.speed = 300
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
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 50,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -0, maxDamage = -285},
		{name = "melee", interval = 3000, chance = 15, range = 7, radius = 3, target = 0, minDamage = -0, maxDamage = -170, effect = CONST_ME_BLACKSPARK},
}

monster.defenses = {
	defense = 40,
	armor = 35,
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = 100},
		{type = COMBAT_ENERGYDAMAGE, percent = -20},
}

monster.summons = {
		{name = "massive water elemental", chance = 13, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Gaaahhh!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 90},
	{id = 2148, chance = 100000, maxCount = 90},
	{id = 5895, chance = 100000},
}

mType:register(monster)
