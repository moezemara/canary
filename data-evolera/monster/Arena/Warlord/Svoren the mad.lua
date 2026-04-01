local mType = Game.createMonsterType("Svoren the Mad")
local monster = {}

monster.description = "svoren the mad"
monster.experience = 3000
monster.outfit = {
	lookType = 254,
	lookHead = 80,
	lookBody = 99,
	lookLegs = 118,
	lookFeet = 38,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 6300
monster.maxHealth = 6300
monster.race = "blood"
monster.corpse = 7349
monster.speed = 260
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
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 90, attack = 95},
		{name = "speed", interval = 2000, chance = 18, range = 7, radius = 5, target = 1, speedchange = -850, duration = 5000, effect = CONST_ME_YELLOWNOTE},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 1000, chance = 9, length = 5, spread = 0, minDamage = 0, maxDamage = -190, effect = CONST_ME_PURPLENOTE},
}

monster.defenses = {
	defense = 35,
	armor = 45,
}

monster.immunities = {
		{type = "energy", condition = true},
		{type = "fire", condition = true},
		{type = "poison", condition = true},
}

monster.voices = {
	interval = 2000,
	chance = 50,
		{text = "NO mommy NO. Leave me alone!", yell = true},
}

mType:register(monster)
