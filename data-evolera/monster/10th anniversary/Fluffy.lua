local mType = Game.createMonsterType("Fluffy")
local monster = {}

monster.description = "Fluffy"
monster.experience = 3550
monster.outfit = {
	lookType = 240,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 4500
monster.maxHealth = 4500
monster.race = "blood"
monster.corpse = 6332
monster.speed = 310
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
		{name = "melee", interval = 1000, skill = 98, attack = 120},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1500, chance = 300, length = 8, spread = 3, minDamage = -100, maxDamage = -200, effect = CONST_ME_BLUEBUBBLE},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 150, length = 8, spread = 3, minDamage = -120, maxDamage = -300, effect = CONST_ME_POISON},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 25, range = 7, minDamage = -105, maxDamage = -235, shootEffect = CONST_ANI_SUDDENDEATH},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 20, range = 7, radius = 6, target = 0, minDamage = -135, maxDamage = -255, effect = CONST_ME_BLUEBUBBLE},
}

monster.defenses = {
	defense = 35,
	armor = 25,
}

monster.immunities = {
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Wooof!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 5944, chance = 5555},
	{id = 6570, chance = 5538, maxCount = 4},
	{id = 6571, chance = 1538},
	{id = 2671, chance = 50000, maxCount = 8},
	{id = 2230, chance = 25000},
	{id = 6500, chance = 7200},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2430, chance = 2857},
			{id = 2383, chance = 2500},
			{id = 6558, chance = 8888},
		}
	},
}

mType:register(monster)
