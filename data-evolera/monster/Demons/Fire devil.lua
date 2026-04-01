local mType = Game.createMonsterType("fire devil")
local monster = {}

monster.description = "a fire devil"
monster.experience = 110
monster.outfit = {
	lookType = 40,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 200
monster.maxHealth = 200
monster.race = "blood"
monster.corpse = 5985
monster.speed = 190
monster.manaCost = 530

monster.changeTarget = {
	interval = 5000,
	chance = 8,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -20, maxDamage = -50},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 11, range = 7, radius = 4, target = 1, minDamage = -60, maxDamage = -90, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 30, range = 7, radius = 2, target = 1, minDamage = -20, maxDamage = -50, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
}

monster.defenses = {
	defense = 15,
	armor = 13,
}

monster.immunities = {
		{type = "fire", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Hot, eh?"},
		{text = "Hell, oh hell!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 2666, chance = 33333, maxCount = 3},
	{id = 2185, chance = 833},
	{id = 2050, chance = 20000},
	{id = 2419, chance = 10000},
	{id = 2387, chance = 5000},
	{id = 2568, chance = 15000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2515, chance = 2857},
			{id = 2260, chance = 6666},
			{id = 2691, chance = 20000, maxCount = 2},
			{id = 2150, chance = 1666, maxCount = 2},
			{id = 2191, chance = 833},
		}
	},
}

mType:register(monster)
