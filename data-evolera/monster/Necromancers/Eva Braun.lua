local mType = Game.createMonsterType("Eva Braun")
local monster = {}

monster.description = "a eva braun"
monster.experience = 500
monster.outfit = {
	lookType = 58,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 148000000
monster.maxHealth = 148000000
monster.race = "blood"
monster.corpse = 6081
monster.speed = 1820
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
	targetDistance = 4,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 20, skill = 28, attack = 200000},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 20, chance = 220, range = 7, minDamage = -1550000, maxDamage = -1800000, shootEffect = CONST_ANI_SUDDENDEATH},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 1000, chance = 13, range = 7, minDamage = -300000, maxDamage = -500000, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 20, chance = 5, range = 7, radius = 7, target = 1, minDamage = -4000000, maxDamage = -6000000, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
}

monster.defenses = {
	defense = 19,
	armor = 10,
		{name = "combat", type = COMBAT_HEALING, interval = 100, chance = 100, minDamage = 800000, maxDamage = 2000000},
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = 40},
		{type = COMBAT_EARTHDAMAGE, percent = 20},
		{type = COMBAT_DEATHDAMAGE, percent = 15},
		{type = COMBAT_PHYSICALDAMAGE, percent = -10},
		{type = COMBAT_HOLYDAMAGE, percent = -10},
}

monster.immunities = {
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "ghoul", chance = 8, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Your energy is mine."},
		{text = "Now, your life has come to an end, hahahha!"},
		{text = "Throw the soul on the altar!"},
}

monster.loot = {
	{id = 2674, chance = 7500, maxCount = 2},
	{id = 2148, chance = 100000, maxCount = 10},
	{id = 1977, chance = 7000},
	{id = 2032, chance = 10000},
	{id = 2070, chance = 3333},
	{id = 2529, chance = 1818},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2125, chance = 600},
			{id = 2802, chance = 14000},
			{id = 2803, chance = 6000},
			{id = 2420, chance = 10000},
			{id = 2143, chance = 5000, maxCount = 2},
			{id = 2760, chance = 5000},
			{id = 2791, chance = 3500},
			{id = 2192, chance = 2500},
			{id = 2114, chance = 2857},
			{id = 2134, chance = 3333},
			{id = 2151, chance = 4000, maxCount = 2},
			{id = 2145, chance = 1666, maxCount = 2},
		}
	},
}

mType:register(monster)
