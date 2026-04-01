local mType = Game.createMonsterType("Necropharus")
local monster = {}

monster.description = "necropharus"
monster.experience = 700
monster.outfit = {
	lookType = 209,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 750
monster.maxHealth = 750
monster.race = "blood"
monster.corpse = 6080
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
		{name = "melee", interval = 2000, skill = 35, attack = 45},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 20, range = 1, minDamage = -80, maxDamage = -120, effect = CONST_ME_REDSPARK},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 17, range = 7, minDamage = -50, maxDamage = -140, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISON},
}

monster.defenses = {
	defense = 25,
	armor = 25,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 25, minDamage = 60, maxDamage = 90},
}

monster.immunities = {
		{type = "poison", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "ghoul", chance = 20, interval = 1000, max = 1},
		{name = "ghost", chance = 17, interval = 1000, max = 1},
		{name = "mummy", chance = 15, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "You will rise as my servant!"},
		{text = "Praise to my master Urgith!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 40},
	{id = 2032, chance = 10000},
	{id = 3969, chance = 150},
	{id = 2392, chance = 220},
	{id = 2804, chance = 20000, maxCount = 2},
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 5809, chance = 100000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2483, chance = 8500},
			{id = 2796, chance = 22500},
			{id = 2231, chance = 6000},
			{id = 2230, chance = 30000},
			{id = 2449, chance = 19900},
			{id = 2541, chance = 7500},
			{id = 2412, chance = 10000},
			{id = 2229, chance = 20000, maxCount = 3},
			{id = 2747, chance = 20000},
			{id = 2436, chance = 833},
			{id = 2663, chance = 909},
			{id = 2195, chance = 666},
			{id = 2423, chance = 5000},
		}
	},
}

mType:register(monster)
