local mType = Game.createMonsterType("scorpion")
local monster = {}

monster.description = "a scorpion"
monster.experience = 45
monster.outfit = {
	lookType = 43,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 45
monster.maxHealth = 45
monster.race = "venom"
monster.corpse = 5988
monster.speed = 150
monster.manaCost = 310

monster.changeTarget = {
	interval = 5000,
	chance = 8,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 5,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 35, attack = 21},
}

monster.defenses = {
	defense = 5,
	armor = 10,
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = -5},
		{type = COMBAT_FIREDAMAGE, percent = -10},
		{type = COMBAT_ENERGYDAMAGE, percent = 20},
}

monster.immunities = {
		{type = "earth", condition = true},
}

mType:register(monster)
