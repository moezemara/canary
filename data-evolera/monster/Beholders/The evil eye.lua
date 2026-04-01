local mType = Game.createMonsterType("The Evil Eye")
local monster = {}

monster.description = "the Evil Eye"
monster.experience = 1500
monster.outfit = {
	lookType = 210,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1200
monster.maxHealth = 1200
monster.race = "blood"
monster.corpse = 6037
monster.speed = 240
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
	targetDistance = 3,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 65, attack = 24},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1000, chance = 15, range = 7, minDamage = -60, maxDamage = -130, shootEffect = CONST_ANI_ENERGY},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 13, range = 7, minDamage = -85, maxDamage = -115, shootEffect = CONST_ANI_FIRE},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 17, range = 7, minDamage = -135, maxDamage = -175, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 15, range = 7, minDamage = -40, maxDamage = -120, shootEffect = CONST_ANI_POISON},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 12, range = 7, minDamage = -110, maxDamage = -130, effect = CONST_ME_REDSHIMMER},
		{name = "speed", interval = 1000, chance = 10, range = 7, speedchange = -850, duration = 20000, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 8, length = 8, spread = 3, minDamage = -35, maxDamage = -85, effect = CONST_ME_GREENBUBBLE},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 6, length = 8, spread = 3, minDamage = -75, maxDamage = -85, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 1000, chance = 9, length = 8, spread = 3, minDamage = -150, maxDamage = -250, effect = CONST_ME_BLUEBUBBLE},
}

monster.defenses = {
	defense = 23,
	armor = 19,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 9, minDamage = 1, maxDamage = 219},
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
		{name = "demon skeleton", chance = 13, interval = 1000, max = 1},
		{name = "ghost", chance = 12, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "653768764!"},
		{text = "Let me take a look at you!"},
		{text = "Inferior creatures, bow before my power!"},
		{text = "659978 54764!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 45},
	{id = 2445, chance = 1000},
	{id = 2451, chance = 800},
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 5898, chance = 5000},
	{
		id = 1987, chance = 80000,
		childs = {
			{id = 2148, chance = 80000, maxCount = 90},
			{id = 2423, chance = 5000},
			{id = 2391, chance = 1333},
		}
	},
}

mType:register(monster)
