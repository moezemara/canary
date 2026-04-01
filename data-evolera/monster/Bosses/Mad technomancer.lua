local mType = Game.createMonsterType("Mad Technomancer")
local monster = {}

monster.description = "mad technomancer"
monster.experience = 55
monster.outfit = {
	lookType = 66,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1000
monster.maxHealth = 1000
monster.race = "blood"
monster.corpse = 6015
monster.speed = 200
monster.manaCost = 0

monster.changeTarget = {
	interval = 500,
	chance = 25,
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
	targetDistance = 4,
	runHealth = 150,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 50, attack = 40},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 10, range = 7, radius = 4, target = 1, minDamage = -50, maxDamage = -120, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 34, range = 7, minDamage = -55, maxDamage = -105, shootEffect = CONST_ANI_LARGEROCK},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 1000, chance = 25, range = 7, minDamage = -50, maxDamage = -80},
}

monster.defenses = {
	defense = 15,
	armor = 15,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 50, minDamage = 75, maxDamage = 325},
}

monster.elements = {
		{type = COMBAT_EARTHDAMAGE, percent = 80},
		{type = COMBAT_FIREDAMAGE, percent = 60},
		{type = COMBAT_ENERGYDAMAGE, percent = 10},
		{type = COMBAT_HOLYDAMAGE, percent = 10},
		{type = COMBAT_ICEDAMAGE, percent = -10},
		{type = COMBAT_DEATHDAMAGE, percent = -5},
}

monster.immunities = {
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "I'm going to make them an offer they can't refuse."},
		{text = "My masterplan cannot fail!"},
		{text = "Gentlemen, you can't fight here! This is the War Room!"},
}

monster.loot = {
	{id = 7699, chance = 1000000},
}

mType:register(monster)
