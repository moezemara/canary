local mType = Game.createMonsterType("Angry Dragonel")
local monster = {}

monster.description = "a angry dragonel"
monster.experience = 32000000000
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
monster.health = 19500000
monster.maxHealth = 19500000
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
	summonable = true,
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
		{name = "melee", interval = 2000, skill = 55, attack = 450000},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 12, length = 8, spread = 3, minDamage = -200000, maxDamage = -300000, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 14, length = 8, spread = 3, minDamage = -60000, maxDamage = -120000, effect = CONST_ME_POFF},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 15, range = 7, minDamage = -400000, maxDamage = -410000, shootEffect = CONST_ANI_FIRE},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 17, range = 7, radius = 4, target = 1, minDamage = -100000, maxDamage = -140000, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 15, range = 7, radius = 4, target = 1, shootEffect = CONST_ANI_FIRE},
}

monster.defenses = {
	defense = 38,
	armor = 25,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 70, minDamage = 260000, maxDamage = 600000},
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
	{id = 5791, chance = 200},
	{id = 2148, chance = 100000, maxCount = 100},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 9971, chance = 100000, maxCount = 7},
			{id = 7891, chance = 200},
		}
	},
}

mType:register(monster)
