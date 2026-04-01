local mType = Game.createMonsterType("Blazing fire elemental")
local monster = {}

monster.description = "a Blazing fire elemental"
monster.experience = 580
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
monster.health = 580
monster.maxHealth = 580
monster.race = "fire"
monster.corpse = 8964
monster.speed = 220
monster.manaCost = 850

monster.changeTarget = {
	interval = 5000,
	chance = 8,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = true,
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
		{name = "melee", interval = 2000, skill = 40, attack = 40},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 13, radius = 5, target = 0, minDamage = -65, maxDamage = -205, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 12, range = 7, radius = 5, target = 1, minDamage = -110, maxDamage = -150, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 15, range = 7, radius = 1, target = 1, shootEffect = CONST_ANI_FIRE},
}

monster.defenses = {
	defense = 20,
	armor = 20,
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = -15},
}

monster.immunities = {
		{type = "fire", condition = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 40},
	{id = 8299, chance = 900},
}

mType:register(monster)
