local mType = Game.createMonsterType("Massive Fire Elemental")
local monster = {}

monster.description = "a massive fire elemental"
monster.experience = 950
monster.outfit = {
	lookType = 242,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1800
monster.maxHealth = 1800
monster.race = "fire"
monster.corpse = 1492
monster.speed = 260
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
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 16, range = 7, radius = 3, target = 1, shootEffect = CONST_ANI_FIRE},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 13, length = 7, spread = 3, minDamage = -200, maxDamage = -700},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 11, radius = 3, target = 0, minDamage = -60, maxDamage = -250, effect = CONST_ME_FIREAREA},
}

monster.defenses = {
	defense = 25,
	armor = 25,
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = -25},
}

monster.immunities = {
		{type = "fire", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

mType:register(monster)
