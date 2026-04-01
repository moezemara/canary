local mType = Game.createMonsterType("Wisp")
local monster = {}

monster.description = "a wisp"
monster.experience = 0
monster.outfit = {
	lookType = 294,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 115
monster.maxHealth = 115
monster.race = "undead"
monster.corpse = 6324
monster.speed = 200
monster.manaCost = 0

monster.changeTarget = {
	interval = 60000,
	chance = 0,
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
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 15,
	targetDistance = 3,
	runHealth = 30,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -0, maxDamage = -60},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, minDamage = -20, maxDamage = -40, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 15,
	armor = 10,
		{name = "speed", interval = 10000, chance = 40, speedchange = 310, duration = 20000},
		{name = "combat", type = COMBAT_HEALING, interval = 5000, chance = 60, minDamage = 25, maxDamage = 75},
		{name = "Invisible", interval = 4000, chance = 0},
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = -30},
		{type = COMBAT_EARTHDAMAGE, percent = -80},
		{type = COMBAT_DEATHDAMAGE, percent = -65},
}

monster.immunities = {
		{type = "physical", condition = true},
		{type = "paralyze", condition = true},
		{type = "drunk", condition = true},
}

monster.voices = {
	interval = 2000,
	chance = 5,
		{text = "Crackle!"},
		{text = "Tsshh"},
}

monster.loot = {
	{id = 10521, chance = 200},
}

mType:register(monster)
