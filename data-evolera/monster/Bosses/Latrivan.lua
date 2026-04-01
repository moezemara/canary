local mType = Game.createMonsterType("Latrivan")
local monster = {}

monster.description = "a latrivan"
monster.experience = 10000
monster.outfit = {
	lookType = 12,
	lookHead = 120,
	lookBody = 128,
	lookLegs = 121,
	lookFeet = 111,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 40000
monster.maxHealth = 40000
monster.race = "fire"
monster.corpse = 6068
monster.speed = 340
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8,
}

monster.strategiesTarget = {
	nearest = 80,
	defense = 20,
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
		{name = "melee", interval = 2000, skill = 120, attack = 135},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 10, length = 7, spread = 0, minDamage = -50, maxDamage = -850, effect = CONST_ME_EXPLOSION},
}

monster.defenses = {
	defense = 45,
	armor = 35,
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = -10},
		{type = COMBAT_ENERGYDAMAGE, percent = 35},
		{type = COMBAT_DEATHDAMAGE, percent = -12},
}

monster.immunities = {
		{type = "fire", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "I might reward you for killing my brother ~ with a swift dead!", yell = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2148, chance = 100000, maxCount = 50},
	{id = 2152, chance = 80000, maxCount = 6},
	{id = 2144, chance = 7777, maxCount = 28},
	{id = 7440, chance = 17000},
	{id = 2514, chance = 4500},
	{id = 2171, chance = 12222},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2151, chance = 6500, maxCount = 13},
			{id = 2432, chance = 8200},
		}
	},
}

mType:register(monster)
