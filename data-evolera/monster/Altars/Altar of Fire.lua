local mType = Game.createMonsterType("Altar of Fire")
local monster = {}

monster.description = "a altar of fire"
monster.experience = 10000000
monster.outfit = {
	lookType = 0,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 2100000000
monster.maxHealth = 2100000000
monster.race = "undead"
monster.corpse = 0
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
	illusionable = false,
	canPushItems = false,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 100,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 140, attack = 800000},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 22, range = 10, radius = 4, target = 1, minDamage = -5000000, maxDamage = -13000000, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 15, range = 7, radius = 4, target = 1, shootEffect = CONST_ANI_FIRE},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 18, range = 10, radius = 4, minDamage = -5000000, maxDamage = -6000000, effect = CONST_ME_FIREAREA},
}

monster.defenses = {
	defense = 1,
	armor = 1,
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 95},
		{type = COMBAT_HOLYDAMAGE, percent = 95},
}

monster.immunities = {
		{type = "poison", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

mType:register(monster)
