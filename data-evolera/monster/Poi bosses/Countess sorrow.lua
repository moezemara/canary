local mType = Game.createMonsterType("The Countess Sorrow")
local monster = {}

monster.description = "Countess Sorrow"
monster.experience = 5150
monster.outfit = {
	lookType = 241,
	lookHead = 20,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 13500
monster.maxHealth = 13500
monster.race = "undead"
monster.corpse = 6344
monster.speed = 340
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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 90, attack = 110},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 10, range = 7, radius = 4, target = 1, minDamage = -250, maxDamage = -550, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISON},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 17, range = 7, radius = 3, target = 1, shootEffect = CONST_ANI_POISON},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 1000, chance = 16, range = 7, minDamage = -100, maxDamage = -500, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 20,
	armor = 25,
		{name = "combat", type = COMBAT_HEALING, interval = 2000, chance = 50, minDamage = 75, maxDamage = 125},
}

monster.immunities = {
		{type = "physical", condition = true},
		{type = "poison", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "Phantasm", chance = 30, interval = 2000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Oh my, you forgot to put your pants on!"},
		{text = "Weeheeheeheehee!"},
		{text = "Welcome to my nightmare!", yell = true},
		{text = "Its nothing but a dream!"},
		{text = "Give in!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2230, chance = 20000},
	{id = 2804, chance = 10000, maxCount = 2},
	{id = 2260, chance = 5000},
	{id = 6536, chance = 100000},
	{id = 5944, chance = 1538},
	{id = 2149, chance = 2500, maxCount = 3},
}

mType:register(monster)
