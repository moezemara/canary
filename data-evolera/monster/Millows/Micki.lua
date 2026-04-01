local mType = Game.createMonsterType("Micki")
local monster = {}

monster.description = "a Micki"
monster.experience = 3700
monster.outfit = {
	lookType = 240,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 300000000
monster.maxHealth = 300000000
monster.race = "fire"
monster.corpse = 6332
monster.speed = 600
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
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 800, minDamage = -4500000, maxDamage = -5500000},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 800, chance = 100, range = 7, minDamage = -4500000, maxDamage = -5500000, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA},
}

monster.defenses = {
	defense = 15,
	armor = 15,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 50, minDamage = 1000000, maxDamage = 3000000},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Blubb.."},
}

monster.loot = {
	{id = 2157, chance = 100000, maxCount = 5},
}

mType:register(monster)
