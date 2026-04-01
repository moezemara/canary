local mType = Game.createMonsterType("Dwarfo")
local monster = {}

monster.description = "Dwarfo"
monster.experience = 0
monster.outfit = {
	lookType = 160,
	lookHead = 78,
	lookBody = 116,
	lookLegs = 95,
	lookFeet = 121,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 800
monster.maxHealth = 800
monster.race = "blood"
monster.corpse = 6081
monster.speed = 990
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
	targetDistance = 2,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -600000, maxDamage = -700000},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 34, range = 7, radius = 1, target = 1, minDamage = -200000, maxDamage = -700000, shootEffect = CONST_ANI_SNOWBALL},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 3000, chance = 20, range = 7, minDamage = -500000, maxDamage = -600000, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_ENERGY},
}

monster.defenses = {
	defense = 10,
	armor = 10,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 25, minDamage = 1000000, maxDamage = 1200000},
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
		{text = "You will die by my little summon, muahaha!"},
		{text = "This will be a easy match."},
}

monster.loot = {
	{id = 2148, chance = 33333, maxCount = 14},
	{id = 2686, chance = 10000, maxCount = 2},
	{id = 2464, chance = 3333},
	{id = 2671, chance = 2500, maxCount = 3},
}

mType:register(monster)
