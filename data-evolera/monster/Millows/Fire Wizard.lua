local mType = Game.createMonsterType("Fire Wizard")
local monster = {}

monster.description = "an Fire Wizard"
monster.experience = 0
monster.outfit = {
	lookType = 145,
	lookHead = 94,
	lookBody = 94,
	lookLegs = 94,
	lookFeet = 94,
	lookAddons = 1,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 650000000
monster.maxHealth = 650000000
monster.race = "blood"
monster.corpse = 2317
monster.speed = 300
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 30,
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
	staticAttackChance = 95,
	targetDistance = 0,
	runHealth = 1150,
}

monster.attacks = {
		{name = "melee", interval = 1000, minDamage = -1000000, maxDamage = -1500000},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 100, range = 5, target = 1, minDamage = -4500000, maxDamage = -4900000, effect = CONST_ME_FIREATTACK, shootEffect = CONST_ANI_FIRE},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 50, length = 5, spread = 3, minDamage = -5000000, maxDamage = -5500000, effect = CONST_ME_FIREATTACK},
}

monster.defenses = {
	defense = 25,
	armor = 25,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 25, minDamage = 25000000, maxDamage = 35000000},
		{name = "invisible", interval = 5000, chance = 10, duration = 2000},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Nothing will remain but your scorched bones!"},
		{text = "Some like it hot!"},
		{text = "It's cooking time!"},
		{text = "Feel the heat of battle!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 70},
}

mType:register(monster)
