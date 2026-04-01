local mType = Game.createMonsterType("marid")
local monster = {}

monster.description = "a marid"
monster.experience = 325
monster.outfit = {
	lookType = 104,
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
monster.corpse = 6033
monster.speed = 190
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
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 50, range = 7, minDamage = -40, maxDamage = -110, shootEffect = CONST_ANI_FIRE},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 2000, chance = 25, range = 7, minDamage = -65, maxDamage = -115, shootEffect = CONST_ANI_ENERGY},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 3000, chance = 20, range = 7, minDamage = -60, maxDamage = -120, shootEffect = CONST_ANI_SUDDENDEATH},
		{name = "speed", interval = 1000, chance = 13, range = 7, speedchange = -650, duration = 15000, effect = CONST_ME_REDSHIMMER},
		{name = "drunk", interval = 1000, chance = 20, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA},
		{name = "outfit", interval = 1000, chance = 17, range = 7, duration = 20000, effect = CONST_ME_BLUESHIMMER},
		--{name = "energycondition", interval = 2000, chance = 17, radius = 3, target = 0, minDamage = -60, maxDamage = -100, effect = CONST_ME_ENERGY},
}

monster.defenses = {
	defense = 15,
	armor = 22,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 15, minDamage = 50, maxDamage = 80},
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = 90},
		{type = COMBAT_EARTHDAMAGE, percent = 40},
		{type = COMBAT_ENERGYDAMAGE, percent = 60},
		{type = COMBAT_DEATHDAMAGE, percent = -10},
		{type = COMBAT_HOLYDAMAGE, percent = 10},
		{type = COMBAT_ICEDAMAGE, percent = -10},
}

monster.immunities = {
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "blue djinn", chance = 15, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Simsalabim"},
		{text = "Feel the power of my magic, tiny mortal!"},
		{text = "Be careful what you wish for."},
		{text = "Wishes can come true."},
}

monster.loot = {
	{id = 2158, chance = 300},
	{id = 1872, chance = 2500},
	{id = 2148, chance = 100000, maxCount = 50},
	{id = 2442, chance = 5000},
	{id = 5912, chance = 5000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2070, chance = 300},
			{id = 2148, chance = 100000, maxCount = 14},
			{id = 2146, chance = 7000, maxCount = 3},
			{id = 2063, chance = 3333},
			{id = 2677, chance = 20000, maxCount = 4},
			{id = 2177, chance = 10000},
		}
	},
}

mType:register(monster)
