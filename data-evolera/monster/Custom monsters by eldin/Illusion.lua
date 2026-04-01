local mType = Game.createMonsterType("Demon")
local monster = {}

monster.description = "a demon"
monster.experience = 25
monster.outfit = {
	lookType = 107,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 50
monster.maxHealth = 50
monster.race = "blood"
monster.corpse = 2940
monster.speed = 120
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
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
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 15,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 15, attack = 10},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 13, range = 7, radius = 2, target = 1, minDamage = -15, maxDamage = -25, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 13, length = 8, spread = 0, minDamage = -15, maxDamage = -25, effect = CONST_ME_ENERGY},
}

monster.defenses = {
	defense = 8,
	armor = 6,
}

monster.immunities = {
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "MUHAHAHAHA!", yell = true},
		{text = "I SMELL FEEEEEAAAR!", yell = true},
		{text = "CHAMEK ATH UTHUL ARAK!", yell = true},
		{text = "Your resistance is futile!"},
		{text = "Your soul will be mine!", yell = true},
}

monster.loot = {
	{id = 2230, chance = 12000},
	{id = 2379, chance = 18000},
	{id = 2667, chance = 13000},
	{id = 2148, chance = 50000, maxCount = 9},
	{id = 2467, chance = 7500},
	{id = 2461, chance = 10000},
	{id = 2235, chance = 7000},
	{id = 2406, chance = 9000},
	{id = 2559, chance = 10000},
	{id = 1294, chance = 30000, maxCount = 3},
}

mType:register(monster)
