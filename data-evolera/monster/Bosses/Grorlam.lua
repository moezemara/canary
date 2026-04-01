local mType = Game.createMonsterType("Grorlam")
local monster = {}

monster.description = "Grorlam"
monster.experience = 2400
monster.outfit = {
	lookType = 205,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 3000
monster.maxHealth = 3000
monster.race = "blood"
monster.corpse = 6005
monster.speed = 240
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 3,
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
		{name = "melee", interval = 2000, skill = 75, attack = 60},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 15, range = 7, minDamage = -150, maxDamage = -200, shootEffect = CONST_ANI_LARGEROCK},
}

monster.defenses = {
	defense = 25,
	armor = 15,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 25, minDamage = 100, maxDamage = 150},
		{name = "speed", interval = 1000, chance = 6, speedchange = 270, duration = 6000},
}

monster.elements = {
		{type = COMBAT_EARTHDAMAGE, percent = 100},
		{type = COMBAT_PHYSICALDAMAGE, percent = 30},
		{type = COMBAT_HOLYDAMAGE, percent = 20},
		{type = COMBAT_ENERGYDAMAGE, percent = 20},
		{type = COMBAT_DEATHDAMAGE, percent = -5},
		{type = COMBAT_FIREDAMAGE, percent = -10},
}

monster.immunities = {
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 2483, chance = 10000},
	{id = 3976, chance = 50000, maxCount = 10},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 1295, chance = 10000},
			{id = 1294, chance = 20000, maxCount = 5},
			{id = 2395, chance = 2500},
			{id = 2050, chance = 20000},
			{id = 2580, chance = 5000},
		}
	},
}

mType:register(monster)
