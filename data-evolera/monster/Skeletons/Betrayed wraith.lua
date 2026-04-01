local mType = Game.createMonsterType("betrayed wraith")
local monster = {}

monster.description = "a betrayed wraith"
monster.experience = 3500
monster.outfit = {
	lookType = 233,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 4200
monster.maxHealth = 4200
monster.race = "undead"
monster.corpse = 6316
monster.speed = 270
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
		{name = "melee", interval = 2000, skill = 90, attack = 95},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 20, length = 5, spread = 3, minDamage = -100, maxDamage = -350, effect = CONST_ME_YELLOWBUBBLE},
		{name = "speed", interval = 1000, chance = 12, range = 1, target = 1, speedchange = -750, duration = 6000, effect = CONST_ME_MORTAREA},
}

monster.defenses = {
	defense = 15,
	armor = 15,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 30, minDamage = 150, maxDamage = 290},
		{name = "invisible", interval = 4000, chance = 50, duration = 4000},
		{name = "speed", interval = 1000, chance = 12, speedchange = 360, duration = 3000},
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = 50},
		{type = COMBAT_HOLYDAMAGE, percent = -20},
}

monster.immunities = {
		{type = "death", condition = true},
		{type = "energy", condition = true},
		{type = "fire", condition = true},
		{type = "poison", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Rrrah!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2152, chance = 40000, maxCount = 4},
	{id = 7365, chance = 5500, maxCount = 6},
	{id = 7590, chance = 7000},
	{id = 2394, chance = 14000},
	{id = 5799, chance = 800},
	{id = 2173, chance = 900},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 6558, chance = 2222},
			{id = 2387, chance = 13500},
			{id = 7364, chance = 5500, maxCount = 4},
			{id = 2226, chance = 10000},
			{id = 5741, chance = 2500},
			{id = 7416, chance = 850},
			{id = 2145, chance = 6222, maxCount = 3},
			{id = 3976, chance = 4333, maxCount = 2},
		}
	},
}

mType:register(monster)
