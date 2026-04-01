local mType = Game.createMonsterType("Barbarian Brutetamer")
local monster = {}

monster.description = "a Brutetamer"
monster.experience = 115
monster.outfit = {
	lookType = 264,
	lookHead = 78,
	lookBody = 116,
	lookLegs = 95,
	lookFeet = 121,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 145
monster.maxHealth = 145
monster.race = "blood"
monster.corpse = 6081
monster.speed = 240
monster.manaCost = 0

monster.changeTarget = {
	interval = 60000,
	chance = 0,
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
	targetDistance = 4,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -30, maxDamage = -70},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 34, range = 7, radius = 1, target = 1, minDamage = -30, maxDamage = -80, shootEffect = CONST_ANI_SNOWBALL},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 3000, chance = 20, range = 7, minDamage = -35, maxDamage = -70, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_ENERGY},
}

monster.defenses = {
	defense = 10,
	armor = 10,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 25, minDamage = 50, maxDamage = 80},
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = -20},
		{type = COMBAT_ICEDAMAGE, percent = 50},
		{type = COMBAT_ENERGYDAMAGE, percent = 20},
		{type = COMBAT_DEATHDAMAGE, percent = -5},
}

monster.immunities = {
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "War Wolf", chance = 40, interval = 2000, max = 1},
}

monster.voices = {
	interval = 2000,
	chance = 5,
		{text = "To me, creatures of the wild!"},
		{text = "My instincts tell me about your cowardice."},
}

monster.loot = {
	{id = 2148, chance = 33333, maxCount = 14},
	{id = 2686, chance = 10000, maxCount = 2},
	{id = 2464, chance = 3333},
	{id = 2671, chance = 2500, maxCount = 3},
	{id = 7343, chance = 3333},
	{id = 7463, chance = 1033},
	{id = 3965, chance = 533},
	{id = 7457, chance = 733},
	{id = 7379, chance = 633},
	{id = 7464, chance = 200},
}

mType:register(monster)
