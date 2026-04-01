local mType = Game.createMonsterType("The Pit Lord")
local monster = {}

monster.description = "the pit lord"
monster.experience = 2500
monster.outfit = {
	lookType = 55,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 4500
monster.maxHealth = 4500
monster.race = "blood"
monster.corpse = 7349
monster.speed = 280
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
	staticAttackChance = 84,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 80, attack = 95},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 7500, chance = 100, minDamage = -100, maxDamage = -250, shootEffect = CONST_ANI_LARGEROCK},
}

monster.defenses = {
	defense = 44,
	armor = 60,
		{name = "speed", interval = 5000, chance = 100, speedchange = 400, duration = 2500},
		{name = "combat", type = COMBAT_HEALING, interval = 6000, chance = 65, minDamage = 50, maxDamage = 210},
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = -15},
		{type = COMBAT_EARTHDAMAGE, percent = 80},
}

monster.immunities = {
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 8000,
	chance = 20,
		{text = "I'LL GET YOU ALL!"},
		{text = "I won't let you escape!"},
		{text = "I'll crush you beneath my feet!"},
}

mType:register(monster)
