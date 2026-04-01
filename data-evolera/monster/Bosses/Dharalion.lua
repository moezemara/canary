local mType = Game.createMonsterType("Dharalion")
local monster = {}

monster.description = "dharalion"
monster.experience = 380
monster.outfit = {
	lookType = 203,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 380
monster.maxHealth = 380
monster.race = "blood"
monster.corpse = 6011
monster.speed = 240
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
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 30, attack = 28},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 1000, chance = 15, range = 7, minDamage = -30, maxDamage = -60},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1000, chance = 13, range = 7, minDamage = -70, maxDamage = -90, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGY},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 10, range = 7, minDamage = -80, maxDamage = -151, shootEffect = CONST_ANI_SUDDENDEATH},
		{name = "effect", interval = 1000, chance = 13, range = 7, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISON},
}

monster.defenses = {
	defense = 25,
	armor = 15,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 20, minDamage = 90, maxDamage = 120},
		{name = "speed", interval = 1000, chance = 7, speedchange = 300, duration = 10000},
}

monster.immunities = {
		{type = "fire", condition = true},
		{type = "poison", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "demon skeleton", chance = 6, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Feel my wrath!"},
		{text = "Noone will stop my ascension!"},
		{text = "My powers are divine!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 1949, chance = 10000},
	{id = 2578, chance = 5000},
	{id = 2260, chance = 4000},
	{id = 2642, chance = 20000},
	{id = 2682, chance = 6666},
	{id = 2802, chance = 10000},
	{id = 2600, chance = 33333},
	{id = 2177, chance = 2857},
	{id = 2689, chance = 20000, maxCount = 3},
	{id = 3976, chance = 50000, maxCount = 10},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2652, chance = 5000},
			{id = 2544, chance = 20000, maxCount = 10},
			{id = 2456, chance = 10000},
			{id = 2032, chance = 4000},
			{id = 2062, chance = 2857},
			{id = 2125, chance = 1818},
			{id = 2154, chance = 1333},
		}
	},
}

mType:register(monster)
