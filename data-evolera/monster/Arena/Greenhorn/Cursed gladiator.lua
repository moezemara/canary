local mType = Game.createMonsterType("Cursed Gladiator")
local monster = {}

monster.description = "cursed gladiator"
monster.experience = 215
monster.outfit = {
	lookType = 100,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 435
monster.maxHealth = 435
monster.race = "undead"
monster.corpse = 7349
monster.speed = 170
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
	staticAttackChance = 78,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -5, maxDamage = -150},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 4000, chance = 50, range = 5, radius = 1, target = 1, minDamage = 0, maxDamage = 50, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 26,
	armor = 25,
}

monster.voices = {
	interval = 2000,
	chance = 5,
		{text = "Death where are you?"},
}

mType:register(monster)
