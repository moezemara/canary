local mType = Game.createMonsterType("slime")
local monster = {}

monster.description = "a slime"
monster.experience = 160
monster.outfit = {
	lookType = 19,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 150
monster.maxHealth = 150
monster.race = "venom"
monster.corpse = 1496
monster.speed = 120
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
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 30, attack = 35},
}

monster.defenses = {
	defense = 0,
	armor = 0,
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = -10},
		{type = COMBAT_ENERGYDAMAGE, percent = -10},
		{type = COMBAT_ICEDAMAGE, percent = 10},
}

monster.immunities = {
		{type = "earth", condition = true},
}

monster.summons = {
		{name = "slime2", chance = 10, interval = 1000, max = 1},
}

mType:register(monster)
