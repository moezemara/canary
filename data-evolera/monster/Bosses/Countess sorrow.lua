local mType = Game.createMonsterType("Countess Sorrow")
local monster = {}

monster.description = "a countess sorrow"
monster.experience = 5150
monster.outfit = {
	lookType = 241,
	lookHead = 20,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 7200
monster.maxHealth = 7200
monster.race = "undead"
monster.corpse = 6344
monster.speed = 250
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
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 70, attack = 90},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 10, range = 7, radius = 4, target = 1, minDamage = -150, maxDamage = -350, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISON},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 17, range = 7, radius = 3, target = 1, shootEffect = CONST_ANI_POISON},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 1000, chance = 25, range = 7, minDamage = -100, maxDamage = -400, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 20,
	armor = 25,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 50, minDamage = 409, maxDamage = 812},
}

monster.immunities = {
		{type = "physical", condition = true},
		{type = "poison", condition = true},
		{type = "ice", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.loot = {
	{id = 6536, chance = 100000},
}

mType:register(monster)
