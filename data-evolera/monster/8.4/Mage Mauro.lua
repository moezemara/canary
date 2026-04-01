local mType = Game.createMonsterType("Mage Mauro")
local monster = {}

monster.description = "an mauro"
monster.experience = 4000
monster.outfit = {
	lookType = 149,
	lookHead = 94,
	lookBody = 77,
	lookLegs = 96,
	lookFeet = 0,
	lookAddons = 3,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 270000000
monster.maxHealth = 270000000
monster.race = "blood"
monster.corpse = 6081
monster.speed = 360
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 30,
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
	staticAttackChance = 95,
	targetDistance = 2,
	runHealth = 1150,
}

monster.attacks = {
		{name = "melee", interval = 200, skill = 50, attack = 100000},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 20, range = 7, target = 1, minDamage = -15000000, maxDamage = -23000000, effect = CONST_ME_FIREATTACK, shootEffect = CONST_ANI_FIRE},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 1000, chance = 20, range = 7, radius = 3, target = 1, minDamage = -19000000, maxDamage = -20000000, effect = CONST_ME_TELEPORT, shootEffect = CONST_ANI_ENERGYBALL},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 20, range = 7, radius = 3, target = 1, shootEffect = CONST_ANI_FIRE},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 15, length = 8, spread = 0, minDamage = -15000000, maxDamage = -27000000, effect = CONST_ME_FIREATTACK},
}

monster.defenses = {
	defense = 25,
	armor = 25,
		{name = "combat", type = COMBAT_HEALING, interval = 100, chance = 100, minDamage = 500000, maxDamage = 100000},
		{name = "invisible", interval = 2000, chance = 10, duration = 4000},
}

monster.elements = {
		{type = COMBAT_EARTHDAMAGE, percent = 90},
		{type = COMBAT_PHYSICALDAMAGE, percent = -10},
		{type = COMBAT_ICEDAMAGE, percent = -15},
		{type = COMBAT_HOLYDAMAGE, percent = 10},
		{type = COMBAT_DEATHDAMAGE, percent = 10},
}

monster.immunities = {
		{type = "energy", condition = true},
		{type = "fire", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "firo elementalus", chance = 13, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Nothing will remain but your scorched bones!"},
		{text = "Some like it hot!"},
		{text = "Feel the heat of battle!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 70},
	{id = 2148, chance = 100000, maxCount = 44},
	{id = 8840, chance = 100000, maxCount = 5},
	{id = 7590, chance = 13500},
	{id = 7591, chance = 12500},
	{id = 7891, chance = 1500},
	{id = 2195, chance = 800},
	{id = 5904, chance = 2200},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 7760, chance = 9500},
			{id = 9980, chance = 1300},
			{id = 2167, chance = 14500},
			{id = 2114, chance = 1100},
			{id = 8092, chance = 1300},
		}
	},
}

mType:register(monster)
