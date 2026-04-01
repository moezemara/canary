local mType = Game.createMonsterType("Lord Golem")
local monster = {}

monster.description = "Lord Golem"
monster.experience = 600000
monster.outfit = {
	lookType = 304,
	lookHead = 0,
	lookBody = 94,
	lookLegs = 79,
	lookFeet = 79,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 555000
monster.maxHealth = 555000
monster.race = "undead"
monster.corpse = 6080
monster.speed = 200
monster.manaCost = 0

monster.changeTarget = {
	interval = 10000,
	chance = 5,
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
	staticAttackChance = 85,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 220, attack = 210},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 13, range = 7, radius = 8, target = 1, minDamage = 0, maxDamage = -12000, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 3000, chance = 18, radius = 8, target = 0, minDamage = -120, maxDamage = -8000, effect = CONST_ME_REDNOTE},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 3000, chance = 15, radius = 8, target = 0, minDamage = -500, maxDamage = -8000, effect = CONST_ME_MORTAREA},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 2000, chance = 16, length = 8, spread = 0, minDamage = -600, maxDamage = -14000, effect = CONST_ME_MORTAREA},
		{name = "speed", interval = 3000, chance = 25, target = 1, speedchange = -800, duration = 4000, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 70,
	armor = 70,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 18, minDamage = 300, maxDamage = 700},
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 20},
		{type = COMBAT_ICEDAMAGE, percent = -20},
		{type = COMBAT_DEATHDAMAGE, percent = 35},
}

monster.immunities = {
		{type = "energy", condition = true},
		{type = "fire", condition = true},
		{type = "poison", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "demon", chance = 25, interval = 2500, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "MY SEED IS FEAR AND MY HARVEST ARE YOUR SOULS", yell = true},
		{text = "The triangle of terror will rise!"},
		{text = "Zathroth look at the destruction i am causing in your name!"},
		{text = "I AM MORGAROTH, LORD OF THE TRIANGLE... AND YOU ARE LOST!", yell = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2148, chance = 50000, maxCount = 90},
	{id = 2144, chance = 4500, maxCount = 13},
	{id = 2149, chance = 5500, maxCount = 4},
	{id = 2396, chance = 1429},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2387, chance = 10000},
			{id = 2195, chance = 10333},
			{id = 2421, chance = 7509},
		}
	},
}

mType:register(monster)
