local mType = Game.createMonsterType("orc shaman")
local monster = {}

monster.description = "a orc shaman"
monster.experience = 110
monster.outfit = {
	lookType = 6,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 115
monster.maxHealth = 115
monster.race = "blood"
monster.corpse = 5978
monster.speed = 180
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
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 15,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 20, attack = 13},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1000, chance = 13, range = 7, minDamage = -20, maxDamage = -30, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGY},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 8, range = 7, radius = 1, target = 1, minDamage = -5, maxDamage = -45, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
}

monster.defenses = {
	defense = 10,
	armor = 8,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 25, minDamage = 27, maxDamage = 43},
}

monster.immunities = {
		{type = "energy", condition = true},
		{type = "poison", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "snake", chance = 25, interval = 1000, max = 1},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 2458, chance = 2222},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2817, chance = 5000},
			{id = 2389, chance = 4000},
			{id = 2079, chance = 3333},
			{id = 2190, chance = 1538},
			{id = 2188, chance = 1000},
		}
	},
}

mType:register(monster)
