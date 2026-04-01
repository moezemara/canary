local mType = Game.createMonsterType("Burning Elemental")
local monster = {}

monster.description = "a burning elemental"
monster.experience = 280
monster.outfit = {
	lookType = 49,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 2000000
monster.maxHealth = 2000000
monster.race = "fire"
monster.corpse = 1492
monster.speed = 650
monster.manaCost = 650

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
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 200, skill = 125, attack = 125000},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 160, range = 2, radius = 2, target = 1, minDamage = -20000000, maxDamage = -40000000, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 14, range = 7, radius = 1, target = 1, shootEffect = CONST_ANI_FIRE},
}

monster.defenses = {
	defense = 45,
	armor = 40,
		{name = "speed", interval = 100000, chance = 1, speedchange = 620, duration = 4000},
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 150, minDamage = 100000, maxDamage = 110000},
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = -99},
}

monster.immunities = {
		{type = "fire", condition = true},
		{type = "physical", condition = true},
		{type = "death", condition = true},
		{type = "invisible", condition = true},
		{type = "holy", condition = true},
}

mType:register(monster)
