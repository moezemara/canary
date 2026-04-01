local mType = Game.createMonsterType("minishabaal")
local monster = {}

monster.description = "Minishabaal"
monster.experience = 4000
monster.outfit = {
	lookType = 237,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 3500
monster.maxHealth = 3500
monster.race = "blood"
monster.corpse = 6364
monster.speed = 700
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
	targetDistance = 4,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 70, attack = 95},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 10, range = 7, radius = 4, target = 1, minDamage = -80, maxDamage = -350, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 3000, chance = 34, range = 7, radius = 2, target = 1, minDamage = -120, maxDamage = -500, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
}

monster.defenses = {
	defense = 25,
	armor = 25,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 50, minDamage = 155, maxDamage = 255},
		{name = "speed", interval = 1000, chance = 12, speedchange = 320, duration = 4000},
		{name = "invisible", interval = 4000, chance = 50, duration = 4000},
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

monster.summons = {
		{name = "Diabolic Imp", chance = 40, interval = 2000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "I had Princess Lumelia as breakfast!"},
		{text = "Naaa-Nana-Naaa-Naaa!"},
		{text = "My brother will come and get you for this!"},
		{text = "Get them Fluffy!"},
		{text = "He He He!"},
		{text = "Pftt, Ferumbras such an upstart!"},
		{text = "My dragon is not that old, it's just second hand!"},
		{text = "My other dragon is a red one!"},
		{text = "When I am big I want to become the ruthless eighth!"},
		{text = "WHERE'S FLUFFY?"},
		{text = "Muahaha!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 2150, chance = 1428, maxCount = 2},
	{id = 2548, chance = 2857},
	{id = 2432, chance = 666},
	{id = 5944, chance = 909},
	{id = 6500, chance = 1000, maxCount = 2},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2148, chance = 100000, maxCount = 20},
			{id = 5944, chance = 909},
			{id = 2488, chance = 800},
			{id = 2515, chance = 1333},
			{id = 2136, chance = 909},
			{id = 2542, chance = 500},
		}
	},
}

mType:register(monster)
