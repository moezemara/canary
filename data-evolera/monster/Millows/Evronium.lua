local mType = Game.createMonsterType("Evronium")
local monster = {}

monster.description = "a Evronium"
monster.experience = 3050
monster.outfit = {
	lookType = 91,
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
monster.speed = 400
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
		{name = "melee", interval = 1000, minDamage = -11750000, maxDamage = -13250000},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 30, radius = 8, target = 0, minDamage = -2000000, maxDamage = -2500000, effect = CONST_ME_FIREATTACK},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 1000, chance = 30, radius = 8, target = 0, minDamage = -4000000, maxDamage = -4500000, effect = CONST_ME_POFF},
}

monster.defenses = {
	defense = 30,
	armor = 25,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 20, minDamage = 18000000, maxDamage = 25000000},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "I will SCRIPT the shit out of you!"},
}

mType:register(monster)
