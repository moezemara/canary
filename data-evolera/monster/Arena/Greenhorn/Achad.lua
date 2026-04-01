local mType = Game.createMonsterType("Achad")
local monster = {}

monster.description = "achad"
monster.experience = 70
monster.outfit = {
	lookType = 146,
	lookHead = 93,
	lookBody = 93,
	lookLegs = 57,
	lookFeet = 97,
	lookAddons = 3,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 185
monster.maxHealth = 185
monster.race = "blood"
monster.corpse = 7349
monster.speed = 185
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 5,
}

monster.strategiesTarget = {
	nearest = 100,
	defense = 1,
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
	runHealth = 55,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -26, maxDamage = -40},
}

monster.defenses = {
	defense = 19,
	armor = 20,
}

mType:register(monster)
