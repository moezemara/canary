local mType = Game.createMonsterType("Elf Warlord")
local monster = {}

monster.description = "an elf warlord"
monster.experience = 1200
monster.outfit = {
	lookType = 64,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 2000
monster.maxHealth = 2000
monster.race = "blood"
monster.corpse = 2981
monster.speed = 220
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
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 70,
	targetDistance = 4,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 85, attack = 88},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2500, chance = 100, range = 7, minDamage = -10, maxDamage = -170, shootEffect = CONST_ANI_ONYXARROW},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 5000, chance = 100, range = 7, radius = 4, target = 1, minDamage = -60, maxDamage = -110, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
}

monster.defenses = {
	defense = 18,
	armor = 7,
}

monster.immunities = {
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Protect the Prince!!"},
		{text = "Intruder!"},
}

monster.loot = {
	{id = 2544, chance = 30000, maxCount = 12},
	{id = 2456, chance = 4000},
	{id = 2148, chance = 30000, maxCount = 5},
	{id = 2681, chance = 18000},
	{id = 2397, chance = 6000},
	{id = 2545, chance = 15000, maxCount = 3},
	{id = 2642, chance = 10000},
	{id = 2484, chance = 12000},
	{id = 2482, chance = 8000},
	{id = 2031, chance = 14000},
}

mType:register(monster)
