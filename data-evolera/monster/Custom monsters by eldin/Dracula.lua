local mType = Game.createMonsterType("Dracula")
local monster = {}

monster.description = "the known dracula"
monster.experience = 2000
monster.outfit = {
	lookType = 68,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 5000
monster.maxHealth = 5000
monster.race = "undead"
monster.corpse = 2956
monster.speed = 300
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 5,
}

monster.strategiesTarget = {
	nearest = 70,
	defense = 30,
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
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 75, attack = 55},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 20, range = 1, minDamage = -55, maxDamage = -105},
		{name = "speed", interval = 1000, chance = 12, range = 7, speedchange = -350, duration = 30000, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 10000, chance = 50, range = 7, minDamage = -50, maxDamage = -180, shootEffect = CONST_ANI_THROWINGSTAR},
}

monster.defenses = {
	defense = 38,
	armor = 27,
		{name = "outfit", interval = 1000, chance = 1, duration = 6000},
}

monster.immunities = {
		{type = "poison", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "vampire", chance = 50, interval = 2000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "BLOOD!", yell = true},
		{text = "Let me kiss your neck."},
		{text = "I smell warm blood."},
		{text = "I call you, my bats! Come!"},
}

monster.loot = {
	{id = 2144, chance = 1500},
	{id = 2032, chance = 11000},
	{id = 2172, chance = 200},
	{id = 2127, chance = 200},
	{id = 2148, chance = 15000, maxCount = 20},
	{id = 2747, chance = 18000},
	{id = 2396, chance = 300},
	{id = 2412, chance = 15000},
	{id = 2649, chance = 8000},
	{id = 2229, chance = 10000},
	{id = 2383, chance = 1000},
	{id = 2479, chance = 400},
	{id = 2534, chance = 100},
}

mType:register(monster)
