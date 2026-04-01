local mType = Game.createMonsterType("tha exp carrier")
local monster = {}

monster.description = "a tha exp carrier"
monster.experience = 2000
monster.outfit = {
	lookType = 57,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1000000
monster.maxHealth = 1000000
monster.race = "blood"
monster.corpse = 6080
monster.speed = 340
monster.manaCost = 600

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
		{name = "melee", interval = 2000, skill = 85, attack = 47},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 4000, chance = 25, radius = 3, minDamage = -130, maxDamage = -250, effect = CONST_ME_BLACKSPARK},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 2000, chance = 25, target = 1, minDamage = -210, maxDamage = -290, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA},
}

monster.defenses = {
	defense = 0,
	armor = 0,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 6, minDamage = 30, maxDamage = 100},
		{name = "speed", interval = 1000, chance = 10, speedchange = 300, duration = 3000},
}

monster.immunities = {
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 2000,
	chance = 10,
		{text = "Come kill me and get exp ^^", yell = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 1949, chance = 10000},
	{id = 2467, chance = 10000},
	{id = 2642, chance = 6666},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2044, chance = 6666},
			{id = 2689, chance = 20000, maxCount = 3},
			{id = 2166, chance = 1428},
		}
	},
}

mType:register(monster)
