local mType = Game.createMonsterType("Fire Overlord")
local monster = {}

monster.description = "a fire overlord"
monster.experience = 2800
monster.outfit = {
	lookType = 243,
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
monster.race = "fire"
monster.corpse = 8964
monster.speed = 300
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
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 70, attack = 90},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 15, range = 7, radius = 4, target = 1, shootEffect = CONST_ANI_FIRE},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 15, length = 1, minDamage = -300, maxDamage = -900, effect = CONST_ME_FIREATTACK},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 13, radius = 4, target = 1, minDamage = -200, maxDamage = -350, effect = CONST_ME_FIREAREA},
}

monster.defenses = {
	defense = 25,
	armor = 25,
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 15},
		{type = COMBAT_ENERGYDAMAGE, percent = 25},
		{type = COMBAT_ICEDAMAGE, percent = -15},
		{type = COMBAT_DEATHDAMAGE, percent = 20},
}

monster.immunities = {
		{type = "fire", condition = true},
		{type = "poison", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2152, chance = 8888, maxCount = 4},
	{id = 8304, chance = 2200},
	{id = 8877, chance = 900},
	{id = 7899, chance = 1210},
}

mType:register(monster)
