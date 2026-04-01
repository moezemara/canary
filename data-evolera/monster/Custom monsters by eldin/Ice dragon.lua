local mType = Game.createMonsterType("Ice Dragon")
local monster = {}

monster.description = "an undead dragon"
monster.experience = 5400
monster.outfit = {
	lookType = 255,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 8350
monster.maxHealth = 8350
monster.race = "undead"
monster.corpse = 6306
monster.speed = 300
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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 90, attack = 120},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 10, range = 7, radius = 4, target = 1, minDamage = -80, maxDamage = -120, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_REDSPARK},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 3000, chance = 17, length = 8, spread = 3, minDamage = -500, maxDamage = -600, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 12, length = 8, spread = 3, minDamage = -500, maxDamage = -600, effect = CONST_ME_POISON},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 10, radius = 6, target = 0, minDamage = -80, maxDamage = -100, effect = CONST_ME_POFF},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 3000, chance = 25, range = 7, minDamage = -80, maxDamage = -150, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 15,
	armor = 15,
}

monster.immunities = {
		{type = "energy", condition = true},
		{type = "fire", condition = true},
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
		{text = "FEEEED MY ETERNAL HUNGER!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2152, chance = 25000, maxCount = 3},
	{id = 2236, chance = 6667},
	{id = 2413, chance = 4000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 6500, chance = 1818},
			{id = 5944, chance = 1538},
			{id = 2547, chance = 500, maxCount = 3},
		}
	},
}

mType:register(monster)
