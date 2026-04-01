local mType = Game.createMonsterType("Boss")
local monster = {}

monster.description = "a boss"
monster.experience = 270000
monster.outfit = {
	lookType = 37,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 240000
monster.maxHealth = 240000
monster.race = "undead"
monster.corpse = 5963
monster.speed = 265
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
	staticAttackChance = 1,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 1500, chance = 100, range = 1000, skill = 100, attack = 1000, effect = CONST_ME_FIREATTACK},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 2200, chance = 22, range = 6000, minDamage = -1, maxDamage = -600, effect = CONST_ME_YELLOWENERGY, shootEffect = CONST_ANI_SMALLHOLY},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1500, chance = 11, range = 5},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1500, chance = 28, range = 1500, minDamage = -20, maxDamage = -1000},
		{name = "firefield", interval = 1500, chance = 33, range = 1500, minDamage = -1, maxDamage = -1200},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 1500, chance = 28, range = 1200, minDamage = -20, maxDamage = -1000},
		{name = "fire wave", interval = 1500, chance = 28, range = 12000, minDamage = -20, maxDamage = -1000},
}

monster.defenses = {
	defense = 31,
	armor = 30,
		{name = "combat", type = COMBAT_HEALING, interval = 1500, chance = 22, minDamage = 2000, maxDamage = 5000},
}

monster.summons = {
		{name = "Demon", chance = 33, interval = 2000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 50,
		{text = "Przyszylem po ciebie z piekla!!", yell = true},
		{text = "Nie odejde bez ciebie!"},
}

monster.loot = {
	{id = 2160, chance = 10000},
	{id = 2646, chance = 10000},
	{id = 2523, chance = 10000},
	{id = 2472, chance = 10000},
}

mType:register(monster)
