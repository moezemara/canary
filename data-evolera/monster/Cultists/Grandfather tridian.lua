local mType = Game.createMonsterType("Grandfather Tridian")
local monster = {}

monster.description = "the grand father tridian"
monster.experience = 1400
monster.outfit = {
	lookType = 193,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1800
monster.maxHealth = 1800
monster.race = "undead"
monster.corpse = 6080
monster.speed = 245
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
	targetDistance = 5,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 40, attack = 35},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 3000, chance = 20, range = 7, radius = 4, target = 1, minDamage = -168, maxDamage = -370, effect = CONST_ME_HOLYAREA, shootEffect = CONST_ANI_HOLY},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 13, range = 7, radius = 1, target = 1, minDamage = 0, maxDamage = -80, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 20,
	armor = 25,
		{name = "invisible", interval = 2000, chance = 15, duration = 6000},
		{name = "combat", type = COMBAT_HEALING, interval = 3000, chance = 15, minDamage = 90, maxDamage = 230},
}

monster.immunities = {
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "Crypt Shambler", chance = 20, interval = 2000, max = 1},
		{name = "Ghost", chance = 30, interval = 2000, max = 1},
}

monster.loot = {
	{id = 2148, chance = 90000, maxCount = 80},
	{id = 2656, chance = 400},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2114, chance = 1333},
			{id = 6087, chance = 1428},
			{id = 5810, chance = 555},
			{id = 2789, chance = 4500, maxCount = 8},
			{id = 2436, chance = 15000},
			{id = 5669, chance = 4000},
			{id = 8922, chance = 13000},
		}
	},
}

mType:register(monster)
