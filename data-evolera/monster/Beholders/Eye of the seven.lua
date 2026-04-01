local mType = Game.createMonsterType("Eye of the seven")
local monster = {}

monster.description = "an eye of the seven"
monster.experience = 90
monster.outfit = {
	lookType = 109,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1
monster.maxHealth = 1
monster.race = "venom"
monster.corpse = 6036
monster.speed = 0
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 0,
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
	staticAttackChance = 90,
	targetDistance = 10,
	runHealth = 0,
}

monster.attacks = {
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 1000, chance = 50, range = 10, minDamage = -250, maxDamage = -350, effect = CONST_ME_ICEATTACK, shootEffect = CONST_ANI_ICE},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 50, range = 10, minDamage = -250, maxDamage = -350, effect = CONST_ME_FIREATTACK, shootEffect = CONST_ANI_FIRE},
}

monster.defenses = {
	defense = 1999,
	armor = 1999,
}

monster.immunities = {
		{type = "physical", condition = true},
		{type = "holy", condition = true},
		{type = "energy", condition = true},
		{type = "fire", condition = true},
		{type = "death", condition = true},
		{type = "earth", condition = true},
		{type = "ice", condition = true},
		{type = "poison", condition = true},
		--{type = "lifedrain", condition = true},
}

mType:register(monster)
