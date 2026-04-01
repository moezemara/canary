local mType = Game.createMonsterType("Crystal Spider")
local monster = {}

monster.description = "a crystal spider"
monster.experience = 900
monster.outfit = {
	lookType = 263,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1250
monster.maxHealth = 1250
monster.race = "undead"
monster.corpse = 7344
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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 60,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 68, attack = 70},
		{name = "speed", interval = 2000, chance = 20, range = 7, radius = 7, target = 0, speedchange = -850, duration = 8000, effect = CONST_ME_POFF},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 1000, chance = 15, range = 7, target = 1, minDamage = -60, maxDamage = -100, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICEATTACK},
		{name = "speed", interval = 2000, chance = 13, range = 7, target = 1, speedchange = -650, shootEffect = CONST_ANI_SNOWBALL},
}

monster.defenses = {
	defense = 20,
	armor = 25,
		{name = "speed", interval = 3000, chance = 40, speedchange = 330, duration = 80000},
}

monster.elements = {
		{type = COMBAT_EARTHDAMAGE, percent = 20},
		{type = COMBAT_ENERGYDAMAGE, percent = -20},
}

monster.immunities = {
		{type = "ice", condition = true},
		{type = "fire", condition = true},
		{type = "paralyze", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 2000,
	chance = 5,
		{text = "Screeech!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 95},
	{id = 2463, chance = 3333},
	{id = 2476, chance = 1428},
	{id = 2457, chance = 3555},
	{id = 2171, chance = 1222},
	{id = 7437, chance = 1077},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 7449, chance = 2455},
			{id = 2477, chance = 1300},
			{id = 7364, chance = 4777, maxCount = 7},
			{id = 7290, chance = 2000},
			{id = 7441, chance = 5000},
		}
	},
}

mType:register(monster)
