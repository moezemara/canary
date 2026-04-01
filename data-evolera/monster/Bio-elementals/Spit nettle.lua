local mType = Game.createMonsterType("spit nettle")
local monster = {}

monster.description = "a spit nettle"
monster.experience = 20
monster.outfit = {
	lookType = 221,
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
monster.corpse = 6062
monster.speed = 0
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
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 100,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 15, range = 7, radius = 1, target = 1, minDamage = -15, maxDamage = -20, shootEffect = CONST_ANI_POISON},
}

monster.defenses = {
	defense = 13,
	armor = 30,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 13, minDamage = 8, maxDamage = 16},
}

monster.immunities = {
		{type = "energy", condition = true},
		{type = "poison", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

mType:register(monster)
