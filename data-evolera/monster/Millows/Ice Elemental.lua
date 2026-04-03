local mType = Game.createMonsterType("Ice Elemental")
local monster = {}

monster.description = "an ice elemental"
monster.experience = 390150000000
monster.outfit = {
	lookType = 11,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 252168750
monster.maxHealth = 252168750
monster.race = "undead"
monster.corpse = 2016
monster.speed = 700
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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 60,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 1000, minDamage = -6500000, maxDamage = -7500000},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 1000, chance = 50, range = 2, target = 1, minDamage = -2000000, maxDamage = -2000000, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICEATTACK},
}

monster.defenses = {
	defense = 20,
	armor = 25,
}

mType:register(monster)
