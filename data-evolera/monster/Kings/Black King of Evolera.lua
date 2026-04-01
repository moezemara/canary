local mType = Game.createMonsterType("Black King of Evolera")
local monster = {}

monster.description = "a black king of evolera"
monster.experience = 20
monster.outfit = {
	lookType = 302,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 6
monster.maxHealth = 6
monster.race = "blood"
monster.corpse = 3058
monster.speed = 0
monster.manaCost = 0

monster.changeTarget = {
	interval = 300,
	chance = 90,
}

monster.strategiesTarget = {
	nearest = 100,
	defense = 50,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 100,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 1000, minDamage = -16000000, maxDamage = -20000000},
}

monster.defenses = {
	defense = 55,
	armor = 55,
		{name = "combat", type = COMBAT_HEALING, interval = 2000, chance = 20, minDamage = 8000000, maxDamage = 9000000},
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 99},
		{type = COMBAT_ENERGYDAMAGE, percent = 99},
		{type = COMBAT_HOLYDAMAGE, percent = 99},
		{type = COMBAT_ICEDAMAGE, percent = 99},
		{type = COMBAT_EARTHDAMAGE, percent = 99},
		{type = COMBAT_FIREDAMAGE, percent = 99},
}

monster.immunities = {
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

mType:register(monster)
