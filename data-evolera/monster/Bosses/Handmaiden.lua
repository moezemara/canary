local mType = Game.createMonsterType("The Handmaiden")
local monster = {}

monster.description = "the handmaiden"
monster.experience = 3850
monster.outfit = {
	lookType = 230,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 14500
monster.maxHealth = 14500
monster.race = "blood"
monster.corpse = 6312
monster.speed = 450
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
	canPushCreatures = true,
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 3100,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -0, maxDamage = -800},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 2000, chance = 25, range = 7, minDamage = -150, maxDamage = -800, effect = CONST_ME_BLUESHIMMER},
		{name = "drunk", interval = 1000, chance = 12, range = 1, target = 1},
}

monster.defenses = {
	defense = 35,
	armor = 25,
		{name = "speed", interval = 3000, chance = 12, speedchange = 380, duration = 8000},
		{name = "invisible", interval = 4000, chance = 50, duration = 6000},
		{name = "combat", type = COMBAT_HEALING, interval = 2000, chance = 50, minDamage = 100, maxDamage = 250},
		{name = "speed", interval = 1000, chance = 35, speedchange = 370, duration = 30000},
}

monster.immunities = {
		{type = "energy", condition = true},
		{type = "fire", condition = true},
		{type = "ice", condition = true},
		{type = "poison", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.loot = {
	{id = 6539, chance = 35000},
}

mType:register(monster)
