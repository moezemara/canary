local mType = Game.createMonsterType("Warlord Ruzad")
local monster = {}

monster.description = "the warlord ruzad"
monster.experience = 1700
monster.outfit = {
	lookType = 2,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1950
monster.maxHealth = 1950
monster.race = "blood"
monster.corpse = 6008
monster.speed = 270
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
		{name = "melee", interval = 2000, skill = 65, attack = 85},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 3000, chance = 25, range = 7, minDamage = -100, maxDamage = -120, shootEffect = CONST_ANI_THROWINGSTAR},
}

monster.defenses = {
	defense = 35,
	armor = 32,
		{name = "invisible", interval = 1000, chance = 4, duration = 2000},
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = 80},
		{type = COMBAT_ENERGYDAMAGE, percent = 30},
		{type = COMBAT_EARTHDAMAGE, percent = -10},
		{type = COMBAT_DEATHDAMAGE, percent = -5},
}

monster.immunities = {
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "Orc Berserker", chance = 10, interval = 2000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Ranat Ulderek!"},
		{text = "Orc buta bana!"},
		{text = "Ikem rambo zambo!"},
		{text = "Futchi maruk buta!"},
}

monster.loot = {
	{id = 2148, chance = 50000, maxCount = 59},
	{id = 2666, chance = 20000, maxCount = 3},
	{id = 2667, chance = 6667},
	{id = 2392, chance = 8970},
	{id = 2463, chance = 7333},
	{id = 2399, chance = 6666, maxCount = 18},
	{id = 2428, chance = 13000},
	{
		id = 1988, chance = 100000,
		childs = {
			{id = 2478, chance = 3333},
			{id = 2200, chance = 9000},
			{id = 2377, chance = 18180},
			{id = 2497, chance = 6670},
			{id = 2179, chance = 5506},
		}
	},
}

mType:register(monster)
