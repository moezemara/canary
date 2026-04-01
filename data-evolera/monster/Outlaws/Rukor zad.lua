local mType = Game.createMonsterType("Rukor Zad")
local monster = {}

monster.description = "rukor zad"
monster.experience = 380
monster.outfit = {
	lookType = 129,
	lookHead = 95,
	lookBody = 95,
	lookLegs = 95,
	lookFeet = 95,
	lookAddons = 3,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 380
monster.maxHealth = 380
monster.race = "blood"
monster.corpse = 6080
monster.speed = 250
monster.manaCost = 450

monster.changeTarget = {
	interval = 2000,
	chance = 5,
}

monster.strategiesTarget = {
	nearest = 70,
	defense = 20,
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
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 45, attack = 45},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 13, range = 7, minDamage = -28, maxDamage = -100, shootEffect = CONST_ANI_THROWINGSTAR},
		{name = "drunk", interval = 1000, chance = 10, range = 6, shootEffect = CONST_ANI_THROWINGSTAR, effect = CONST_ME_STUN},
}

monster.defenses = {
	defense = 20,
	armor = 25,
		{name = "speed", interval = 1000, chance = 9, speedchange = 1201, duration = 3000},
		{name = "invisible", interval = 1000, chance = 9, duration = 2000},
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 8},
		{type = COMBAT_DEATHDAMAGE, percent = 5},
}

monster.immunities = {
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "I can kill a man in a thousand ways, and thats only with a spoon!"},
		{text = "You shouldn't have come here"},
}

monster.loot = {
	{id = 2148, chance = 80000, maxCount = 70},
	{id = 3969, chance = 100000},
}

mType:register(monster)
