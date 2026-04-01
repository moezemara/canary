local mType = Game.createMonsterType("Slim")
local monster = {}

monster.description = "slim"
monster.experience = 580
monster.outfit = {
	lookType = 101,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1025
monster.maxHealth = 1025
monster.race = "undead"
monster.corpse = 7349
monster.speed = 200
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
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 78,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -54, maxDamage = -170},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 50, shootEffect = CONST_ANI_POISON},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 3049, chance = 40, minDamage = -10, maxDamage = -50, effect = CONST_ME_BLACKSPARK},
}

monster.defenses = {
	defense = 38,
	armor = 36,
}

monster.immunities = {
		{type = "poison", condition = true},
		{type = "paralyze", condition = true},
}

monster.voices = {
	interval = 2000,
	chance = 5,
		{text = "Knooorrr!"},
}

mType:register(monster)
