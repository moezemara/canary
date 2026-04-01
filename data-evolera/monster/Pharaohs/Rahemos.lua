local mType = Game.createMonsterType("rahemos")
local monster = {}

monster.description = "a rahemos"
monster.experience = 3100
monster.outfit = {
	lookType = 84,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 3700
monster.maxHealth = 3700
monster.race = "blood"
monster.corpse = 6025
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
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 125, attack = 120},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1000, chance = 10, range = 7, minDamage = -200, maxDamage = -600, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_PURPLEENERGY},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 1000, chance = 11, range = 7, minDamage = -200, maxDamage = -600, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA},
		{name = "speed", interval = 1000, chance = 12, radius = 6, target = 0, speedchange = -850, duration = 60000, effect = CONST_ME_POISON},
		{name = "drunk", interval = 1000, chance = 8, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA},
		{name = "outfit", interval = 1000, chance = 15, range = 7, duration = 12000, effect = CONST_ME_BLUESHIMMER},
}

monster.defenses = {
	defense = 35,
	armor = 30,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 20, minDamage = 200, maxDamage = 500},
		{name = "outfit", interval = 1000, chance = 5, duration = 4000},
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = 95},
		{type = COMBAT_ENERGYDAMAGE, percent = 95},
		{type = COMBAT_HOLYDAMAGE, percent = -25},
}

monster.immunities = {
		{type = "death", condition = true},
		{type = "ice", condition = true},
		{type = "earth", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "demon", chance = 12, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "It's a kind of magic."},
		{text = "Abrah Kadabrah!"},
		{text = "Nothing hidden in my warpings."},
		{text = "It's not a trick, it's Rahemos."},
		{text = "Meet my dear friend from hell."},
		{text = "I will make you believe in magic."},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2185, chance = 1444},
	{id = 2348, chance = 100000},
	{id = 2153, chance = 2400},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2148, chance = 100000, maxCount = 70},
			{id = 2150, chance = 5000, maxCount = 3},
			{id = 2214, chance = 2300},
			{id = 2447, chance = 1011},
		}
	},
}

mType:register(monster)
