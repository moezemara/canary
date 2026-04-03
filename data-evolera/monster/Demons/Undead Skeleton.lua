local mType = Game.createMonsterType("Undead Skeleton")
local monster = {}

monster.description = "a undead skeleton"
monster.experience = 216750000000
monster.outfit = {
	lookType = 232,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 140093750
monster.maxHealth = 140093750
monster.race = "blood"
monster.corpse = 6310
monster.speed = 700
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
		{name = "melee", interval = 200, skill = 150, attack = 450000},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 2000, chance = 17, range = 1, target = 1, minDamage = -3500000, maxDamage = -3800000, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 40, range = 1, radius = 4, target = 1, minDamage = -3000000, maxDamage = -3800000, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISON},
}

monster.defenses = {
	defense = 30,
	armor = 25,
		{name = "combat", type = COMBAT_HEALING, interval = 3000, chance = 18, minDamage = 200, maxDamage = 395},
		{name = "speed", interval = 5000, chance = 20, speedchange = 500, duration = 1000},
}

monster.immunities = {
		{type = "death", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Close your eyes... I want to show you something!"},
		{text = "I will haunt you forever!"},
		{text = "I will make you scream!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 70},
	{id = 2148, chance = 100000, maxCount = 70},
	{id = 2152, chance = 22222, maxCount = 4},
	{id = 2666, chance = 20000, maxCount = 4},
	{id = 2671, chance = 50000, maxCount = 2},
	{id = 2230, chance = 12500},
	{id = 6558, chance = 11700},
	{id = 6558, chance = 9800},
	{id = 2532, chance = 6700},
	{id = 6500, chance = 4500, maxCount = 2},
	{id = 2387, chance = 7777},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2491, chance = 5700},
			{id = 7419, chance = 1100},
			{id = 5944, chance = 12400},
			{id = 2457, chance = 9850},
			{id = 6300, chance = 1429},
			{id = 2477, chance = 2900},
			{id = 2195, chance = 1200},
			{id = 6526, chance = 1666},
			{id = 5810, chance = 900},
		}
	},
}

mType:register(monster)
