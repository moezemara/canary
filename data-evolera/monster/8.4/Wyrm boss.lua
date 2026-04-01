local mType = Game.createMonsterType("Wyrm Boss")
local monster = {}

monster.description = "a wyrm boss"
monster.experience = 1800000
monster.outfit = {
	lookType = 291,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 190000
monster.maxHealth = 190000
monster.race = "blood"
monster.corpse = 8941
monster.speed = 290
monster.manaCost = 0

monster.changeTarget = {
	interval = 60000,
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
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 85,
	targetDistance = 1,
	runHealth = 1,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 80, attack = 3000},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1000, chance = 11, radius = 3, target = 0, minDamage = -1100, maxDamage = -2220, effect = CONST_ME_YELLOWENERGY},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1000, chance = 10, range = 7, target = 1, minDamage = -1001, maxDamage = -1023, effect = CONST_ME_PURPLEENERGY, shootEffect = CONST_ANI_ENERGY},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 11, length = 5, spread = 0, minDamage = -905, maxDamage = -1440, effect = CONST_ME_POFF},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1000, chance = 10, length = 4, spread = 4, minDamage = -100, maxDamage = -1070, effect = CONST_ME_PURPLEENERGY},
}

monster.defenses = {
	defense = 30,
	armor = 30,
		{name = "combat", type = COMBAT_HEALING, interval = 6000, chance = 65, minDamage = 105, maxDamage = 275},
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = 20},
		{type = COMBAT_EARTHDAMAGE, percent = 75},
		{type = COMBAT_ICEDAMAGE, percent = -5},
		{type = COMBAT_DEATHDAMAGE, percent = -5},
}

monster.immunities = {
		{type = "energy", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 3000,
	chance = 5,
		{text = "GRRR!"},
		{text = "GRROARR!"},
}

monster.loot = {
	{id = 2672, chance = 9000, maxCount = 3},
	{id = 2148, chance = 30000, maxCount = 100},
	{id = 2647, chance = 2222},
	{id = 8921, chance = 2100},
	{id = 7411, chance = 1444},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2148, chance = 100000, maxCount = 100},
			{id = 7430, chance = 1654},
			{id = 7588, chance = 5332},
			{id = 8871, chance = 2400},
		}
	},
}

mType:register(monster)
