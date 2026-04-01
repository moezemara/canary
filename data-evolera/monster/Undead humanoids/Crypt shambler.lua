local mType = Game.createMonsterType("crypt shambler")
local monster = {}

monster.description = "a crypt shambler"
monster.experience = 195
monster.outfit = {
	lookType = 100,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 330
monster.maxHealth = 330
monster.race = "undead"
monster.corpse = 6029
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
		{name = "melee", interval = 2000, skill = 60, attack = 39},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 13, range = 1, minDamage = -25, maxDamage = -55},
}

monster.defenses = {
	defense = 10,
	armor = 15,
}

monster.immunities = {
		{type = "poison", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Uhhhhhhh!"},
		{text = "Aaaaahhhh!"},
		{text = "Hoooohhh!"},
		{text = "Chhhhhhh!"},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 15},
	{id = 2671, chance = 33333, maxCount = 2},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2377, chance = 2857},
			{id = 2399, chance = 33333, maxCount = 2},
			{id = 2450, chance = 5000},
			{id = 2482, chance = 20000},
			{id = 2541, chance = 2000},
		}
	},
}

mType:register(monster)
