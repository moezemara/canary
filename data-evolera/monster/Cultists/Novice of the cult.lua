local mType = Game.createMonsterType("Novice Of The Cult")
local monster = {}

monster.description = "a novice of the cult"
monster.experience = 100
monster.outfit = {
	lookType = 133,
	lookHead = 114,
	lookBody = 95,
	lookLegs = 114,
	lookFeet = 114,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 285
monster.maxHealth = 285
monster.race = "blood"
monster.corpse = 6080
monster.speed = 210
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
	pushable = true,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 40,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 35, attack = 35},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 17, range = 7, radius = 4, target = 1, minDamage = -30, maxDamage = -40, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 17, range = 7, radius = 1, target = 1, minDamage = -30, maxDamage = -75, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISON},
}

monster.defenses = {
	defense = 10,
	armor = 15,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 12, minDamage = 25, maxDamage = 49},
}

monster.immunities = {
		{type = "poison", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
}

monster.summons = {
		{name = "Chicken", chance = 10000, interval = 2000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Fear us!"},
		{text = "You will not tell anyone what you have seen."},
		{text = "Your curiosity will be punished!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 2661, chance = 2000},
	{id = 2145, chance = 5000, maxCount = 3},
	{id = 5810, chance = 555},
	{id = 2213, chance = 1666},
	{id = 2478, chance = 6666},
	{id = 2398, chance = 18427},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2199, chance = 1818},
			{id = 2190, chance = 1538},
			{id = 6087, chance = 5000},
		}
	},
}

mType:register(monster)
