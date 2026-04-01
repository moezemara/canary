local mType = Game.createMonsterType("blue djenius")
local monster = {}

monster.description = "a blue djenius"
monster.experience = 1
monster.outfit = {
	lookType = 80,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 40093750
monster.maxHealth = 40093750
monster.race = "blood"
monster.corpse = 0
monster.speed = 800
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
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 200, minDamage = -500000, maxDamage = -520000},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 50, range = 7, minDamage = -100000, maxDamage = -100000, shootEffect = CONST_ANI_FIRE},
}

monster.defenses = {
	defense = 10,
	armor = 20,
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = 0},
		{type = COMBAT_DEATHDAMAGE, percent = 0},
		{type = COMBAT_ENERGYDAMAGE, percent = 0},
		{type = COMBAT_ICEDAMAGE, percent = 0},
		{type = COMBAT_HOLYDAMAGE, percent = 0},
}

monster.immunities = {
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Simsalabim"},
		{text = "Feel the power of my magic, tiny mortal!"},
		{text = "Be careful what you wish for."},
		{text = "Wishes can come true."},
}

monster.loot = {
	{id = 2745, chance = 1000},
	{id = 7378, chance = 2000, maxCount = 2},
	{id = 2146, chance = 2500, maxCount = 4},
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 2684, chance = 50000, maxCount = 5},
	{id = 2146, chance = 6666, maxCount = 4},
	{id = 2663, chance = 100},
	{id = 1971, chance = 10000},
	{id = 2044, chance = 20000},
	{id = 2063, chance = 7500},
	{id = 5912, chance = 5000},
}

mType:register(monster)
