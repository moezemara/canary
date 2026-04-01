local mType = Game.createMonsterType("demon skeleton")
local monster = {}

monster.description = "a demon skeleton"
monster.experience = 240
monster.outfit = {
	lookType = 37,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 400
monster.maxHealth = 400
monster.race = "undead"
monster.corpse = 5963
monster.speed = 230
monster.manaCost = 620

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
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -0, maxDamage = -185},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 10, range = 1, minDamage = -30, maxDamage = -50},
}

monster.defenses = {
	defense = 25,
	armor = 25,
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = -10},
		{type = COMBAT_HOLYDAMAGE, percent = -25},
}

monster.immunities = {
		{type = "fire", condition = true},
		{type = "poison", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "death", condition = true},
		{type = "drunk", condition = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 40},
	{id = 2399, chance = 10000},
	{id = 2515, chance = 400},
	{id = 2178, chance = 1000},
	{id = 2050, chance = 10000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2417, chance = 5000},
			{id = 2482, chance = 2857},
			{id = 2194, chance = 700},
			{id = 2398, chance = 10000},
		}
	},
}

mType:register(monster)
