local mType = Game.createMonsterType("The plasmother")
local monster = {}

monster.description = "a plasmother"
monster.experience = 8900
monster.outfit = {
	lookType = 238,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 16050
monster.maxHealth = 16050
monster.race = "venom"
monster.corpse = 6532
monster.speed = 310
monster.manaCost = 0

monster.changeTarget = {
	interval = 5500,
	chance = 10,
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
		{name = "melee", interval = 2000, skill = 90, attack = 85},
		{name = "speed", interval = 1000, chance = 8, radius = 6, target = 0, speedchange = -800, duration = 10000, effect = CONST_ME_POISON},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 15, radius = 4, target = 0, minDamage = -200, maxDamage = -350, effect = CONST_ME_POISON},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 3000, chance = 15, radius = 4, target = 1, minDamage = -200, maxDamage = -530, effect = CONST_ME_GREENSPARK, shootEffect = CONST_ANI_POISON},
}

monster.defenses = {
	defense = 30,
	armor = 30,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 75, minDamage = 505, maxDamage = 605},
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = -20},
}

monster.immunities = {
		{type = "poison", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Blubb"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2152, chance = 10000, maxCount = 3},
	{id = 6500, chance = 2857},
	{id = 5944, chance = 2500},
	{id = 6535, chance = 100000},
}

mType:register(monster)
