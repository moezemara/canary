local mType = Game.createMonsterType("banshee")
local monster = {}

monster.description = "a banshee"
monster.experience = 900
monster.outfit = {
	lookType = 78,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1000
monster.maxHealth = 1000
monster.race = "undead"
monster.corpse = 6019
monster.speed = 220
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
	runHealth = 500,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 70, attack = 65},
		{name = "speed", interval = 1000, chance = 9, range = 7, speedchange = -600, duration = 20000, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 11, radius = 4, target = 0, minDamage = -120, maxDamage = -250, effect = CONST_ME_REDNOTE},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 1000, chance = 8, range = 1, target = 1, minDamage = -50, maxDamage = -350, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_SMALLCLOUDS},
}

monster.defenses = {
	defense = 20,
	armor = 15,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 25, minDamage = 113, maxDamage = 187},
}

monster.elements = {
		{type = COMBAT_HOLYDAMAGE, percent = -20},
}

monster.immunities = {
		{type = "death", condition = true},
		{type = "earth", condition = true},
		{type = "fire", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Are you ready to rock?"},
		{text = "That's what I call easy listening!"},
		{text = "Let the music play!"},
		{text = "I will mourn your death!"},
		{text = "IIIIEEEeeeeeehhhHHHHH!", yell = true},
		{text = "Dance for me your dance of death!"},
		{text = "Feel my gentle kiss of death."},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 40},
	{id = 2144, chance = 1000, maxCount = 3},
	{id = 2657, chance = 5000},
	{id = 2168, chance = 1533},
	{id = 2170, chance = 2000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2654, chance = 20000},
			{id = 2655, chance = 1533},
		}
	},
}

mType:register(monster)
