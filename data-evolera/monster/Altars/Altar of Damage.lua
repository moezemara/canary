local mType = Game.createMonsterType("Altar of Damage")
local monster = {}

monster.description = "a altar of damage"
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
		{name = "melee", interval = 1000, skill = 125, attack = 195},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1415, chance = 30, range = 3, radius = 4, target = 1, minDamage = -4000000, maxDamage = -6000000, effect = CONST_ME_GREENBUBBLE, shootEffect = CONST_ANI_POISON},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 200, chance = 30, range = 8, minDamage = -3000000, maxDamage = -4900000, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_POFF},
		{name = "melee", interval = 100, chance = 30, range = 7, target = 1, skill = 145, attack = 400000, shootEffect = CONST_ANI_WHIRLWINDSWORD},
		{name = "melee", interval = 150, chance = 30, radius = 9, target = 0, skill = 110, attack = 400000, effect = CONST_ME_BLACKSPARK},
		{name = "melee", interval = 180, chance = 30, radius = 5, target = 0, skill = 140, attack = 400000, effect = CONST_ME_GROUNDSHAKER},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 1000, chance = 25, radius = 5, target = 0, minDamage = -3500000, maxDamage = -7000000, effect = CONST_ME_POISON},
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
