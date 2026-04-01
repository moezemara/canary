local mType = Game.createMonsterType("Frosty")
local monster = {}

monster.description = "a frost giantess"
monster.experience = 150
monster.outfit = {
	lookType = 265,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 400000000
monster.maxHealth = 400000000
monster.race = "undead"
monster.corpse = 7330
monster.speed = 925
monster.manaCost = 490

monster.changeTarget = {
	interval = 2000,
	chance = 5,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 50,
	targetDistance = 0,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 20, skill = 140, attack = 500000},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 14, range = 1, target = 1, minDamage = 1000000, maxDamage = -9000000, shootEffect = CONST_ANI_LARGEROCK},
}

monster.defenses = {
	defense = 23,
	armor = 22,
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = 20},
		{type = COMBAT_HOLYDAMAGE, percent = 10},
		{type = COMBAT_ENERGYDAMAGE, percent = -10},
		{type = COMBAT_DEATHDAMAGE, percent = -5},
}

monster.immunities = {
		{type = "ice", condition = true},
}

monster.voices = {
	interval = 2000,
	chance = 5,
		{text = "Ymirs Mjalle!"},
		{text = "No run so much, must stay fat!"},
		{text = "Horre, Sjan Flan!"},
		{text = "Damned fast food."},
		{text = "Come kiss the cook!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 10},
	{id = 2406, chance = 25000},
	{id = 2381, chance = 1955},
	{id = 2209, chance = 2055},
	{id = 2510, chance = 5333},
	{id = 7290, chance = 4444},
	{id = 2490, chance = 2777},
	{id = 2666, chance = 33333, maxCount = 2},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2513, chance = 2500},
			{id = 7441, chance = 3444},
			{id = 2671, chance = 33333, maxCount = 2},
		}
	},
}

mType:register(monster)
