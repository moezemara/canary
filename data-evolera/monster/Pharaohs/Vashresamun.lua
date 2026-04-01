local mType = Game.createMonsterType("vashresamun")
local monster = {}

monster.description = "a vashresamun"
monster.experience = 2945
monster.outfit = {
	lookType = 90,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 4000
monster.maxHealth = 4000
monster.race = "undead"
monster.corpse = 6025
monster.speed = 310
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
		{name = "melee", interval = 2000, skill = 70, attack = 55},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 16, range = 1, minDamage = -90, maxDamage = -750, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 1000, chance = 12, radius = 5, target = 0, minDamage = -150, maxDamage = -600, effect = CONST_ME_PURPLENOTE},
}

monster.defenses = {
	defense = 30,
	armor = 20,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 20, minDamage = 250, maxDamage = 450},
		{name = "speed", interval = 1000, chance = 12, speedchange = 350, duration = 30000},
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = 20},
		{type = COMBAT_EARTHDAMAGE, percent = 20},
		{type = COMBAT_ICEDAMAGE, percent = 20},
		{type = COMBAT_ENERGYDAMAGE, percent = 20},
}

monster.immunities = {
		{type = "death", condition = true},
		{type = "invisible", condition = true},
		--{type = "lifedrain", condition = true},
}

monster.summons = {
		{name = "banshee", chance = 12, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Come my maidens, we have visitors!"},
		{text = "Are you enjoying my music?"},
		{text = "If music is the food of death, drop dead."},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 7590, chance = 2000},
	{id = 2646, chance = 4000},
	{id = 2349, chance = 2349},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2148, chance = 100000, maxCount = 100},
			{id = 2445, chance = 1222},
		}
	},
}

mType:register(monster)
