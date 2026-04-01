local mType = Game.createMonsterType("dragon lord hatchling")
local monster = {}

monster.description = "a dragon lord hatchling"
monster.experience = 645
monster.outfit = {
	lookType = 272,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 750
monster.maxHealth = 750
monster.race = "blood"
monster.corpse = 7622
monster.speed = 200
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 5,
}

monster.strategiesTarget = {
	nearest = 70,
	defense = 10,
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
	runHealth = 80,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 55, attack = 45},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 12, length = 8, spread = 3, minDamage = -40, maxDamage = -110, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 14, length = 8, spread = 3, minDamage = -60, maxDamage = -90, effect = CONST_ME_POFF},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 15, range = 7, minDamage = -40, maxDamage = -80, shootEffect = CONST_ANI_FIRE},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 17, range = 7, radius = 4, target = 1, minDamage = -80, maxDamage = -140, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 15, range = 7, radius = 4, target = 1, shootEffect = CONST_ANI_FIRE},
}

monster.defenses = {
	defense = 38,
	armor = 25,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 13, minDamage = 26, maxDamage = 48},
}

monster.immunities = {
		{type = "fire", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 50,
		{text = "Zchu?"},
}

monster.loot = {
	{id = 7620, chance = 3500},
	{id = 2672, chance = 5000},
	{id = 2796, chance = 3500},
	{id = 2148, chance = 100000, maxCount = 100},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2148, chance = 100000, maxCount = 20},
			{id = 7891, chance = 200},
		}
	},
}

mType:register(monster)
