local mType = Game.createMonsterType("plaguesmith")
local monster = {}

monster.description = "a plaguesmith"
monster.experience = 4500
monster.outfit = {
	lookType = 247,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 8250
monster.maxHealth = 8250
monster.race = "venom"
monster.corpse = 6516
monster.speed = 350
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
	runHealth = 700,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 95, attack = 110},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 17, radius = 4, target = 0, minDamage = -60, maxDamage = -110, effect = CONST_ME_POISON},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 3000, chance = 18, length = 4, spread = 3, minDamage = -100, maxDamage = -350, effect = CONST_ME_YELLOWBUBBLE},
		{name = "speed", interval = 2000, chance = 16, range = 4, radius = 4, target = 1, speedchange = -700, duration = 30000, effect = CONST_ME_POISON},
}

monster.defenses = {
	defense = 55,
	armor = 55,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 7, minDamage = 75, maxDamage = 495},
		{name = "speed", interval = 2000, chance = 30, speedchange = 420, duration = 7000},
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = 25},
		{type = COMBAT_ENERGYDAMAGE, percent = -10},
		{type = COMBAT_ICEDAMAGE, percent = 15},
		{type = COMBAT_HOLYDAMAGE, percent = -15},
		{type = COMBAT_DEATHDAMAGE, percent = 20},
}

monster.immunities = {
		{type = "poison", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 3000,
	chance = 30,
		{text = "You are looking a bit feverish today!"},
		{text = "Hachoo!"},
		{text = "Cough Cough!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2235, chance = 27000},
	{id = 2237, chance = 18000},
	{id = 2416, chance = 7333},
	{id = 2645, chance = 1533},
	{id = 6500, chance = 6800},
	{id = 5888, chance = 4200},
	{id = 5887, chance = 3400},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2492, chance = 1333},
			{id = 7365, chance = 6666},
			{id = 9808, chance = 9500},
			{id = 2477, chance = 5800},
			{id = 2444, chance = 999},
			{id = 2417, chance = 12600},
			{id = 2509, chance = 11111},
			{id = 5944, chance = 7600},
			{id = 3957, chance = 2800},
			{id = 2209, chance = 3200},
		}
	},
}

mType:register(monster)
