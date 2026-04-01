local mType = Game.createMonsterType("Rehaen")
local monster = {}

monster.description = "Rehaen"
monster.experience = 3050
monster.outfit = {
	lookType = 89,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 430000000
monster.maxHealth = 430000000
monster.race = "fire"
monster.corpse = 6025
monster.speed = 280
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
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 1000, minDamage = -2350000, maxDamage = -2650000},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 30, radius = 3, target = 0, minDamage = -1000000, maxDamage = -1300000, effect = CONST_ME_FIREATTACK},
}

monster.defenses = {
	defense = 30,
	armor = 25,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 20, minDamage = 3000000, maxDamage = 5000000},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Ashes to ashes!"},
}

mType:register(monster)
