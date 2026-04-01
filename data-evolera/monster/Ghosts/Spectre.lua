local mType = Game.createMonsterType("spectre")
local monster = {}

monster.description = "a spectre"
monster.experience = 1350
monster.outfit = {
	lookType = 235,
	lookHead = 20,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1350
monster.maxHealth = 1350
monster.race = "undead"
monster.corpse = 6348
monster.speed = 250
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
		{name = "melee", interval = 2000, skill = 69, attack = 74},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 15, radius = 4, target = 0, minDamage = -300, maxDamage = -550, effect = CONST_ME_REDNOTE},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 12, range = 7, radius = 3, target = 1, shootEffect = CONST_ANI_POISON},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 3000, chance = 25, range = 7, minDamage = -10, maxDamage = -400, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 20,
	armor = 25,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 50, minDamage = 75, maxDamage = 125},
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = -10},
		{type = COMBAT_PHYSICALDAMAGE, percent = 20},
		{type = COMBAT_ICEDAMAGE, percent = 15},
		{type = COMBAT_ENERGYDAMAGE, percent = -8},
		{type = COMBAT_HOLYDAMAGE, percent = -15},
}

monster.immunities = {
		{type = "earth", condition = true},
		{type = "death", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Revenge ... is so ... sweet!"},
		{text = "Life...force!"},
		{text = "Feed me your... lifeforce!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2152, chance = 33333, maxCount = 3},
	{id = 2260, chance = 6667},
	{id = 2260, chance = 3333},
	{id = 5909, chance = 2222},
	{id = 2134, chance = 2857},
	{id = 2642, chance = 5000},
	{id = 2071, chance = 1818},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2189, chance = 1333},
			{id = 6500, chance = 2857},
			{id = 5944, chance = 1429},
			{id = 6300, chance = 1000},
			{id = 2136, chance = 909},
		}
	},
}

mType:register(monster)
