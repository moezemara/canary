local mType = Game.createMonsterType("enlightened of the cult")
local monster = {}

monster.description = "a enlightened of the cult"
monster.experience = 500
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
monster.health = 700
monster.maxHealth = 700
monster.race = "blood"
monster.corpse = 6080
monster.speed = 220
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
	staticAttackChance = 80,
	targetDistance = 5,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 30, attack = 35},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 17, range = 7, radius = 1, target = 1, minDamage = -30, maxDamage = -140, effect = CONST_ME_REDSHIMMER},
		{name = "drunk", interval = 1000, chance = 15, range = 7, radius = 1, target = 1, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 3000, chance = 17, range = 7, radius = 1, target = 1, minDamage = -70, maxDamage = -185, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA},
}

monster.defenses = {
	defense = 20,
	armor = 15,
		{name = "invisible", interval = 2000, chance = 15, duration = 6000},
}

monster.immunities = {
		{type = "poison", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "Crypt Shambler", chance = 10000, interval = 2000, max = 1},
		{name = "Ghost", chance = 10000, interval = 2000, max = 1},
}

monster.loot = {
	{id = 2148, chance = 47831, maxCount = 82},
	{id = 2654, chance = 5000},
	{id = 5801, chance = 909},
	{id = 2167, chance = 1000},
	{id = 2171, chance = 909},
	{id = 7426, chance = 1009},
	{id = 2656, chance = 400},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2114, chance = 1333},
			{id = 6087, chance = 1428},
			{id = 5810, chance = 555},
			{id = 2146, chance = 1538, maxCount = 2},
			{id = 2436, chance = 500},
			{id = 2200, chance = 1000},
			{id = 5669, chance = 400},
		}
	},
}

mType:register(monster)
