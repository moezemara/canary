local mType = Game.createMonsterType("Ice Overlord")
local monster = {}

monster.description = "an ice overlord"
monster.experience = 1950
monster.outfit = {
	lookType = 11,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 4000
monster.maxHealth = 4000
monster.race = "undead"
monster.corpse = 8965
monster.speed = 390
monster.manaCost = 0

monster.changeTarget = {
	interval = 20000,
	chance = 15,
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
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 85,
	targetDistance = 1,
	runHealth = 1,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 140, attack = 135},
		{name = "speed", interval = 2000, chance = 18, radius = 6, target = 0, speedchange = -800, duration = 5000, effect = CONST_ME_ICETORNADO},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 1000, chance = 9, range = 7, target = 1, minDamage = -50, maxDamage = -400, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICEATTACK},
}

monster.defenses = {
	defense = 30,
	armor = 30,
		{name = "combat", type = COMBAT_HEALING, interval = 2000, chance = 15, minDamage = 90, maxDamage = 150},
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 25},
		{type = COMBAT_ENERGYDAMAGE, percent = -15},
		{type = COMBAT_HOLYDAMAGE, percent = 25},
}

monster.immunities = {
		{type = "fire", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 8300, chance = 2500},
}

mType:register(monster)
