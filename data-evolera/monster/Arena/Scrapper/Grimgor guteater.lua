local mType = Game.createMonsterType("Grimgor Guteater")
local monster = {}

monster.description = "grimgor guteater"
monster.experience = 670
monster.outfit = {
	lookType = 2,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1115
monster.maxHealth = 1115
monster.race = "blood"
monster.corpse = 7349
monster.speed = 240
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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 78,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -100, maxDamage = -235},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 4000, chance = 60, minDamage = -55, maxDamage = -130, shootEffect = CONST_ANI_THROWINGSTAR},
}

monster.defenses = {
	defense = 45,
	armor = 45,
}

monster.immunities = {
		{type = "fire", condition = true},
		{type = "poison", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 2000,
	chance = 5,
		{text = "Renat Ulderek."},
		{text = "Ikem Rambo Zambo."},
}

mType:register(monster)
