local mType = Game.createMonsterType("efreet")
local monster = {}

monster.description = "a efreet"
monster.experience = 325
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
monster.health = 550
monster.maxHealth = 550
monster.race = "blood"
monster.corpse = 6032
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
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -60, maxDamage = -150},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 50, range = 7, minDamage = -40, maxDamage = -110, shootEffect = CONST_ANI_FIRE},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 2000, chance = 25, range = 7, minDamage = -65, maxDamage = -115, shootEffect = CONST_ANI_ENERGY},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 3000, chance = 20, range = 7, minDamage = -60, maxDamage = -120, shootEffect = CONST_ANI_SUDDENDEATH},
		{name = "speed", interval = 1000, chance = 13, range = 7, speedchange = -650, duration = 15000, effect = CONST_ME_REDSHIMMER},
		{name = "drunk", interval = 1000, chance = 20, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA},
		{name = "outfit", interval = 1000, chance = 17, range = 7, duration = 30000, effect = CONST_ME_BLUESHIMMER},
		--{name = "energycondition", interval = 1000, chance = 17, radius = 3, target = 0, minDamage = -60, maxDamage = -100, effect = CONST_ME_ENERGY},
}

monster.defenses = {
	defense = 20,
	armor = 15,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 15, minDamage = 50, maxDamage = 80},
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = 90},
		{type = COMBAT_EARTHDAMAGE, percent = 10},
		{type = COMBAT_ENERGYDAMAGE, percent = 60},
		{type = COMBAT_DEATHDAMAGE, percent = 10},
		{type = COMBAT_HOLYDAMAGE, percent = -8},
		{type = COMBAT_ICEDAMAGE, percent = -5},
}

monster.immunities = {
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "green djinn", chance = 15, interval = 1000, max = 1},
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
	{id = 2155, chance = 100},
	{id = 2148, chance = 100000, maxCount = 60},
	{id = 2673, chance = 6666, maxCount = 4},
	{id = 2044, chance = 10000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2149, chance = 7000, maxCount = 2},
			{id = 2663, chance = 200},
			{id = 1860, chance = 2500},
			{id = 2148, chance = 80000, maxCount = 15},
			{id = 2442, chance = 2000},
		}
	},
}

mType:register(monster)
