local mType = Game.createMonsterType("Primitive")
local monster = {}

monster.description = "a Primitive"
monster.experience = 45
monster.outfit = {
	lookType = 143,
	lookHead = 1,
	lookBody = 1,
	lookLegs = 1,
	lookFeet = 1,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 200
monster.maxHealth = 200
monster.race = "blood"
monster.corpse = 6080
monster.speed = 300
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
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 5,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 30, attack = 16},
		{name = "drunk", interval = 1000, chance = 20, range = 7, shootEffect = CONST_ANI_ENERGY},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 34, range = 7, radius = 3, target = 1, minDamage = -20, maxDamage = -20, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "outfit", interval = 1000, chance = 2, radius = 4, target = 0, duration = 10000, effect = CONST_ME_BLUEBUBBLE},
}

monster.defenses = {
	defense = 25,
	armor = 20,
}

monster.immunities = {
		{type = "energy", condition = true},
		{type = "fire", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "We don't need a future!"},
		{text = "I'll rook you all!"},
		{text = "They thought they'd beaten us!"},
		{text = "You are history!"},
		{text = "There can only be one world!"},
		{text = "Valor who?"},
		{text = "Die noob!"},
		{text = "There are no dragons!"},
		{text = "I'll quit forever! Again ..."},
		{text = "You all are noobs!"},
		{text = "Beware of the cyclops!"},
		{text = "Just had a disconnect."},
		{text = "Magic is only good for girls!"},
		{text = "We'll be back!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 10},
	{id = 2484, chance = 50000},
	{id = 2482, chance = 50000},
	{id = 2526, chance = 1538},
	{id = 2385, chance = 2000},
	{id = 2386, chance = 2000},
	{id = 6570, chance = 5538},
	{id = 6571, chance = 1538},
}

mType:register(monster)
