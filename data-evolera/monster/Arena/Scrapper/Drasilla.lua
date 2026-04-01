local mType = Game.createMonsterType("Drasilla")
local monster = {}

monster.description = "drasilla"
monster.experience = 700
monster.outfit = {
	lookType = 34,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1320
monster.maxHealth = 1320
monster.race = "blood"
monster.corpse = 7349
monster.speed = 170
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
	staticAttackChance = 78,
	targetDistance = 1,
	runHealth = 100,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -42, maxDamage = -130},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 6000, chance = 60, length = 8, spread = 3, minDamage = -100, maxDamage = -180, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 3000, chance = 50, range = 10, radius = 5, target = 1, minDamage = -70, maxDamage = -115, effect = CONST_ME_FIREAREA},
}

monster.defenses = {
	defense = 33,
	armor = 32,
		{name = "combat", type = COMBAT_HEALING, interval = 6000, chance = 65, minDamage = 20, maxDamage = 50},
}

monster.immunities = {
		{type = "fire", condition = true},
		{type = "poison", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 2000,
	chance = 5,
		{text = "FCHHHHHHHH!"},
		{text = "GROOOOAAAAAAAAR!"},
}

mType:register(monster)
