local mType = Game.createMonsterType("King Djenius")
local monster = {}

monster.description = "a king djenius"
monster.experience = 1
monster.outfit = {
	lookType = 103,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 320750000
monster.maxHealth = 320750000
monster.race = "blood"
monster.corpse = 6032
monster.speed = 500
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
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 0,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 1000, minDamage = -7000000, maxDamage = -8000000},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 55, range = 7, minDamage = -3000000, maxDamage = -4000000, shootEffect = CONST_ANI_FIRE},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 2000, chance = 45, range = 7, minDamage = -3000000, maxDamage = -4000000, shootEffect = CONST_ANI_ENERGY},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 3000, chance = 35, range = 7, minDamage = -3000000, maxDamage = -4000000, shootEffect = CONST_ANI_SUDDENDEATH},
		{name = "speed", interval = 1000, chance = 13, range = 7, speedchange = -650, duration = 15000, effect = CONST_ME_REDSHIMMER},
		{name = "outfit", interval = 1000, chance = 17, range = 7, duration = 30000, effect = CONST_ME_BLUESHIMMER},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1000, chance = 30, range = 1, target = 1, minDamage = -3000000, maxDamage = -4000000, effect = CONST_ME_PURPLEENERGY},
		--{name = "energycondition", interval = 1000, chance = 17, radius = 3, target = 0, minDamage = -60, maxDamage = -100, effect = CONST_ME_ENERGY},
}

monster.defenses = {
	defense = 20,
	armor = 15,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 60, minDamage = 10000000, maxDamage = 13000000},
}

monster.summons = {
		{name = "blue djenius", chance = 1000, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "I grant you a deathwish!"},
		{text = "Muhahahaha!"},
		{text = "I wish you a merry trip to hell!"},
		{text = "Tell me your last wish!"},
		{text = "Good wishes are for fairytales"},
}

monster.loot = {
	{id = 2157, chance = 30000, maxCount = 8},
	{id = 11302, chance = 100},
	{id = 11356, chance = 100},
	{id = 11304, chance = 100},
	{id = 11240, chance = 100},
	{id = 11355, chance = 100},
	{id = 6391, chance = 100},
	{id = 2537, chance = 100},
}

mType:register(monster)
