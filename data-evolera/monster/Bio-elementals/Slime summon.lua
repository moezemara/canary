local mType = Game.createMonsterType("slime2")
local monster = {}

monster.description = "a slime2"
monster.experience = 260
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
		{name = "melee", interval = 2000, skill = 22, attack = 42},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 17, range = 7, radius = 1, target = 1, shootEffect = CONST_ANI_POISON},
}

monster.defenses = {
	defense = 10,
	armor = 3,
}

monster.immunities = {
		{type = "poison", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Blubb"},
}

mType:register(monster)
