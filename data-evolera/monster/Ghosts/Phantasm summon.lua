local mType = Game.createMonsterType("Phantasm")
local monster = {}

monster.description = "a phantasm"
monster.experience = 0
monster.outfit = {
	lookType = 241,
	lookHead = 20,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 65
monster.maxHealth = 65
monster.race = "undead"
monster.corpse = 6344
monster.speed = 250
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
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 70, attack = 90},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 10, range = 7, radius = 4, target = 1, minDamage = -150, maxDamage = -150, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISON},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 17, range = 7, radius = 3, target = 1, shootEffect = CONST_ANI_POISON},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 1000, chance = 25, range = 7, minDamage = -100, maxDamage = -200, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 20,
	armor = 25,
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Oh my, you forgot to put your pants on!"},
		{text = "Weeheeheeheehee!"},
		{text = "Its nothing but a dream!"},
		{text = "Give in!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 20},
}

mType:register(monster)
