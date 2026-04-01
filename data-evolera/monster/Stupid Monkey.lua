local mType = Game.createMonsterType("Stupid Monkey")
local monster = {}

monster.description = "a stupid monkey"
monster.experience = 115
monster.outfit = {
	lookType = 118,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 225
monster.maxHealth = 225
monster.race = "blood"
monster.corpse = 6045
monster.speed = 200
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
	attackable = false,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 0,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2, skill = 140, attack = 150000000},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 250, chance = 100, range = 7, minDamage = 0, maxDamage = 0, shootEffect = CONST_ANI_SMALLSTONE},
}

monster.defenses = {
	defense = 12,
	armor = 15,
		{name = "speed", interval = 1000, chance = 12, speedchange = 240, duration = 3000},
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = 25},
		{type = COMBAT_HOLYDAMAGE, percent = 10},
		{type = COMBAT_ICEDAMAGE, percent = -15},
		{type = COMBAT_DEATHDAMAGE, percent = -5},
}

monster.immunities = {
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Eeeeek! Eeeeek"},
		{text = "Huh! Huh! Huh!"},
		{text = "Ahhuuaaa!"},
}

monster.loot = {
	{id = 2678, chance = 3000, maxCount = 5},
	{id = 5883, chance = 1500},
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 2675, chance = 6667, maxCount = 5},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2682, chance = 6980},
			{id = 1294, chance = 3500, maxCount = 3},
		}
	},
}

mType:register(monster)
