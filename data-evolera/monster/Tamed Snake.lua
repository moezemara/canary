local mType = Game.createMonsterType("Tamed Snake")
local monster = {}

monster.description = "a tamed snake"
monster.experience = 0
monster.outfit = {
	lookType = 28,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 9000000
monster.maxHealth = 9000000
monster.race = "blood"
monster.corpse = 2817
monster.speed = 200
monster.manaCost = 205

monster.changeTarget = {
	interval = 2000,
	chance = 0,
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
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 1, skill = 60, attack = 50000},
}

monster.defenses = {
	defense = 1,
	armor = 0,
}

monster.elements = {
		{type = COMBAT_EARTHDAMAGE, percent = 100},
		{type = COMBAT_ENERGYDAMAGE, percent = 22},
		{type = COMBAT_FIREDAMAGE, percent = -10},
		{type = COMBAT_ICEDAMAGE, percent = -10},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Zzzzzzt I'm gonna bit you"},
}

mType:register(monster)
