local mType = Game.createMonsterType("Yeti")
local monster = {}

monster.description = "a yeti"
monster.experience = 460
monster.outfit = {
	lookType = 110,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 950
monster.maxHealth = 950
monster.race = "blood"
monster.corpse = 6038
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
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 80, attack = 60},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 15, range = 7, minDamage = -190, maxDamage = -140, shootEffect = CONST_ANI_SNOWBALL, effect = CONST_ME_POFF},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1000, chance = 12, length = 3, spread = 3, minDamage = -120, maxDamage = -175, effect = CONST_ME_POFF},
}

monster.defenses = {
	defense = 33,
	armor = 28,
}

monster.immunities = {
		{type = "energy", condition = true},
		{type = "poison", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Yooodelaaahooohooo!"},
		{text = "Yooodelaaaheeeheee!"},
}

monster.loot = {
	{id = 2671, chance = 10000, maxCount = 3},
	{id = 2148, chance = 100000, maxCount = 70},
	{id = 2666, chance = 33333, maxCount = 5},
	{id = 2111, chance = 10000, maxCount = 5},
	{id = 2425, chance = 1333},
	{id = 4848, chance = 600},
	{id = 2197, chance = 700},
	{id = 2381, chance = 6666},
	{id = 2177, chance = 2500},
	{id = 2044, chance = 10000},
	{id = 2448, chance = 10000},
	{id = 2688, chance = 2500, maxCount = 4},
}

mType:register(monster)
