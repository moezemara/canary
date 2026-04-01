local mType = Game.createMonsterType("blue djinn")
local monster = {}

monster.description = "a blue djinn"
monster.experience = 215
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
monster.health = 330
monster.maxHealth = 330
monster.race = "blood"
monster.corpse = 6020
monster.speed = 200
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
		{name = "melee", interval = 2000, skill = 50, attack = 50},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 50, range = 7, minDamage = -45, maxDamage = -75, shootEffect = CONST_ANI_FIRE},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 1000, chance = 10, range = 7, minDamage = -50, maxDamage = -105, shootEffect = CONST_ANI_DEATH},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 3000, chance = 25, range = 7, minDamage = -55, maxDamage = -105, shootEffect = CONST_ANI_SUDDENDEATH},
		{name = "drunk", interval = 1000, chance = 20, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA},
		{name = "outfit", interval = 1000, chance = 17, range = 7, duration = 20000, effect = CONST_ME_BLUESHIMMER},
}

monster.defenses = {
	defense = 10,
	armor = 20,
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = 85},
		{type = COMBAT_DEATHDAMAGE, percent = -8},
		{type = COMBAT_ENERGYDAMAGE, percent = 50},
		{type = COMBAT_ICEDAMAGE, percent = -10},
		{type = COMBAT_HOLYDAMAGE, percent = 15},
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
