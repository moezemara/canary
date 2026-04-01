local mType = Game.createMonsterType("Darakan the Executioner")
local monster = {}

monster.description = "darakan the executioner"
monster.experience = 1600
monster.outfit = {
	lookType = 255,
	lookHead = 78,
	lookBody = 114,
	lookLegs = 114,
	lookFeet = 114,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 3500
monster.maxHealth = 3500
monster.race = "blood"
monster.corpse = 7349
monster.speed = 255
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
	staticAttackChance = 78,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 70, attack = 75},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 18, minDamage = -72, maxDamage = -170, shootEffect = CONST_ANI_SPEAR},
}

monster.defenses = {
	defense = 31,
	armor = 30,
		{name = "combat", type = COMBAT_HEALING, interval = 6000, chance = 65, minDamage = 20, maxDamage = 50},
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = -10},
		{type = COMBAT_ICEDAMAGE, percent = 15},
}

monster.immunities = {
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 4000,
	chance = 15,
		{text = "FIGHT LIKE A BARBARIAN!"},
		{text = "VICTORY IS MINE!"},
		{text = "I AM your father!"},
		{text = "To be the man you have to beat the man!"},
}

mType:register(monster)
