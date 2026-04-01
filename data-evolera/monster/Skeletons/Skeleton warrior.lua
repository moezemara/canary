local mType = Game.createMonsterType("Skeleton warrior")
local monster = {}

monster.description = "a skeleton warrior"
monster.experience = 45
monster.outfit = {
	lookType = 298,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 65
monster.maxHealth = 65
monster.race = "undead"
monster.corpse = 2843
monster.speed = 180
monster.manaCost = 350

monster.changeTarget = {
	interval = 2000,
	chance = 0,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -10, maxDamage = -40},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, minDamage = -5, maxDamage = -17, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 9,
	armor = 2,
}

monster.elements = {
		{type = COMBAT_HOLYDAMAGE, percent = 10},
}

monster.immunities = {
		{type = "death", condition = true},
}

monster.loot = {
	{id = 2148, chance = 90000, maxCount = 15},
	{id = 2230, chance = 3333},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2398, chance = 10000},
			{id = 2511, chance = 5000},
			{id = 2787, chance = 90000, maxCount = 3},
			{id = 2789, chance = 4000},
		}
	},
}

mType:register(monster)
