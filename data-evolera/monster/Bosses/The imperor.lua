local mType = Game.createMonsterType("The Imperor")
local monster = {}

monster.description = "the imperor"
monster.experience = 8000
monster.outfit = {
	lookType = 237,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 15000
monster.maxHealth = 15000
monster.race = "fire"
monster.corpse = 8635
monster.speed = 330
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 5,
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
	targetDistance = 4,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 110, attack = 110},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 13, range = 1, target = 1, minDamage = -50, maxDamage = -800, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREATTACK},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 20, range = 7, radius = 6, target = 1, minDamage = -50, maxDamage = -800, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 30, target = 1, length = 4, spread = 2, minDamage = -90, maxDamage = -350, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
}

monster.defenses = {
	defense = 15,
	armor = 15,
		{name = "combat", type = COMBAT_HEALING, interval = 2000, chance = 50, minDamage = 175, maxDamage = 505},
		{name = "speed", interval = 2000, chance = 12, speedchange = 380, duration = 4000},
		{name = "invisible", interval = 3000, chance = 20, duration = 5000},
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = -20},
		{type = COMBAT_HOLYDAMAGE, percent = -20},
		{type = COMBAT_DEATHDAMAGE, percent = 20},
}

monster.immunities = {
		{type = "fire", condition = true},
		{type = "poison", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "diabolic imp", chance = 30, interval = 5500, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Muahaha!"},
		{text = "He he he!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 79},
	{id = 2050, chance = 15000},
	{id = 6558, chance = 2222},
	{id = 2260, chance = 18000},
	{id = 6534, chance = 100000},
	{id = 6300, chance = 999},
	{id = 2465, chance = 6577},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2548, chance = 20000},
			{id = 2465, chance = 6577},
			{id = 2185, chance = 833},
			{id = 2464, chance = 7887},
			{id = 5944, chance = 5666},
			{id = 7899, chance = 2000},
			{id = 7900, chance = 2000},
			{id = 7891, chance = 2000},
			{id = 6500, chance = 7777},
			{id = 2150, chance = 8888},
			{id = 2165, chance = 4555},
		}
	},
}

mType:register(monster)
