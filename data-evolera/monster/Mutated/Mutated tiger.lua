local mType = Game.createMonsterType("Mutated Tiger")
local monster = {}

monster.description = "a mutated tiger"
monster.experience = 750
monster.outfit = {
	lookType = 318,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1100
monster.maxHealth = 1100
monster.race = "blood"
monster.corpse = 9913
monster.speed = 245
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
	runHealth = 100,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 65, attack = 65},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 3000, chance = 20, length = 8, spread = 3, minDamage = -30, maxDamage = -130, effect = CONST_ME_REDSPARK},
}

monster.defenses = {
	defense = 30,
	armor = 30,
		{name = "invisible", interval = 1000, chance = 25, duration = 9000},
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 25, minDamage = 150, maxDamage = 300},
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = 20},
		{type = COMBAT_ENERGYDAMAGE, percent = 20},
		{type = COMBAT_ICEDAMAGE, percent = 20},
		{type = COMBAT_DEATHDAMAGE, percent = -15},
		{type = COMBAT_EARTHDAMAGE, percent = 80},
}

monster.immunities = {
		{type = "paralyze", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 2500,
	chance = 10,
		{text = "GRAAARRRRRR"},
		{text = "CHHHHHHHHHHH"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 96},
	{id = 2666, chance = 100000, maxCount = 4},
	{id = 7588, chance = 900},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2509, chance = 4000},
			{id = 2515, chance = 700},
			{id = 2168, chance = 800},
			{id = 7454, chance = 300},
			{id = 7436, chance = 200},
		}
	},
}

mType:register(monster)
