local mType = Game.createMonsterType("dipthrah")
local monster = {}

monster.description = "a dipthrah"
monster.experience = 2900
monster.outfit = {
	lookType = 87,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 4200
monster.maxHealth = 4200
monster.race = "undead"
monster.corpse = 6031
monster.speed = 290
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
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 130, attack = 130},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 1000, chance = 15, range = 7, minDamage = -200, maxDamage = -500, effect = CONST_ME_REDSHIMMER},
		{name = "speed", interval = 1000, chance = 15, range = 7, speedchange = -850, duration = 50000, effect = CONST_ME_REDSHIMMER},
		{name = "drunk", interval = 1000, chance = 12, radius = 4, target = 0, effect = CONST_ME_BLUEBUBBLE},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 1000, chance = 11, radius = 6, target = 0, minDamage = 0, maxDamage = -600, effect = CONST_ME_BLUEBUBBLE},
}

monster.defenses = {
	defense = 25,
	armor = 25,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 25, minDamage = 100, maxDamage = 200},
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = 20},
		{type = COMBAT_HOLYDAMAGE, percent = -10},
}

monster.immunities = {
		{type = "physical", condition = true},
		{type = "death", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "priestess", chance = 15, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Come closer to learn the final lesson."},
		{text = "You can't escape death forever."},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2176, chance = 2000},
	{id = 2353, chance = 100000},
	{id = 2436, chance = 1666},
	{id = 2148, chance = 100000, maxCount = 100},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2148, chance = 100000, maxCount = 150},
			{id = 2158, chance = 1800},
			{id = 7590, chance = 3000},
			{id = 2146, chance = 4000, maxCount = 3},
			{id = 2446, chance = 1300},
		}
	},
}

mType:register(monster)
