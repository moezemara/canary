local mType = Game.createMonsterType("Alezzo")
local monster = {}

monster.description = "a lizard highpriest"
monster.experience = 4000
monster.outfit = {
	lookType = 115,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 6000
monster.maxHealth = 6000
monster.race = "blood"
monster.corpse = 4262
monster.speed = 184
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 50,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 70,
	targetDistance = 4,
	runHealth = 15,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 40, attack = 40},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 17, range = 7, minDamage = -50, maxDamage = -110, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISON},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 9000, chance = 70, range = 7, minDamage = -40, maxDamage = -60, shootEffect = CONST_ANI_ENERGY},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 7000, chance = 30, length = 5, spread = 0, minDamage = -200, maxDamage = -290, effect = CONST_ME_ENERGY},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 4000, chance = 50, range = 7, radius = 4, minDamage = -140, maxDamage = -230, shootEffect = CONST_ANI_ENERGY},
}

monster.defenses = {
	defense = 15,
	armor = 22,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 25, minDamage = 200, maxDamage = 300},
}

monster.immunities = {
		{type = "poison", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "cobra", chance = 25, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Shhhhhhhh."},
		{text = "I ssssmell warm blood!"},
}

monster.loot = {
	{id = 2654, chance = 9000},
	{id = 3971, chance = 100},
	{id = 2817, chance = 70000},
	{id = 2237, chance = 19900},
	{id = 2148, chance = 80000, maxCount = 25},
	{id = 2177, chance = 1000},
	{id = 2168, chance = 200},
	{id = 2181, chance = 1000},
	{id = 2150, chance = 500},
	{id = 2182, chance = 100},
	{id = 2154, chance = 200},
}

mType:register(monster)
