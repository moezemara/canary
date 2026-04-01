local mType = Game.createMonsterType("Zugurosh")
local monster = {}

monster.description = "zugurosh"
monster.experience = 10000
monster.outfit = {
	lookType = 12,
	lookHead = 2,
	lookBody = 35,
	lookLegs = 57,
	lookFeet = 91,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 95000
monster.maxHealth = 95000
monster.race = "fire"
monster.corpse = 6068
monster.speed = 340
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 15,
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
	staticAttackChance = 85,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 120, attack = 110},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 3000, chance = 20, radius = 4, target = 1, minDamage = -250, maxDamage = -850, effect = CONST_ME_EXPLOSION},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 2000, chance = 15, radius = 4, target = 0, minDamage = -100, maxDamage = -350, effect = CONST_ME_SMALLCLOUDS},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 1000, chance = 13, radius = 5, target = 0, minDamage = -60, maxDamage = -230, effect = CONST_ME_WATERSPLASH},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 2000, chance = 15, length = 7, spread = 0, minDamage = 0, maxDamage = -500, effect = CONST_ME_MORTAREA},
}

monster.defenses = {
	defense = 55,
	armor = 45,
		{name = "combat", type = COMBAT_HEALING, interval = 2000, chance = 15, minDamage = 400, maxDamage = 900},
		{name = "invisible", interval = 1000, chance = 5, duration = 6000},
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = -15},
		{type = COMBAT_ENERGYDAMAGE, percent = -5},
		{type = COMBAT_EARTHDAMAGE, percent = -8},
		{type = COMBAT_FIREDAMAGE, percent = 25},
}

monster.immunities = {
		{type = "death", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "You will run out of resources soon enough!!", yell = true},
		{text = "One little mistake and your all are mine!"},
		{text = "I sense your strength fading!"},
}

mType:register(monster)
