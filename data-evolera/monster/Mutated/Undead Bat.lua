local mType = Game.createMonsterType("Undead Bat")
local monster = {}

monster.description = "a undead bat"
monster.experience = 615
monster.outfit = {
	lookType = 307,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 140000000
monster.maxHealth = 140000000
monster.race = "blood"
monster.corpse = 9829
monster.speed = 845
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
		{name = "melee", interval = 200, skill = 65, attack = 790000},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 18, range = 7, minDamage = 4000000, maxDamage = -7000000, shootEffect = CONST_ANI_POISON},
		{name = "combat", type = COMBAT_DROWNDAMAGE, interval = 1000, chance = 8, radius = 6, target = 0, minDamage = -4500000, maxDamage = -6000000, effect = CONST_ME_WHITENOTE},
		{name = "drunk", interval = 1000, chance = 8, radius = 6, target = 0, duration = 15000},
}

monster.defenses = {
	defense = 30,
	armor = 30,
}

monster.immunities = {
		{type = "drunk", condition = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 50},
	{id = 2148, chance = 100000, maxCount = 60},
	{id = 2800, chance = 13000},
	{id = 5894, chance = 5500, maxCount = 2},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2513, chance = 13500},
			{id = 2150, chance = 5800, maxCount = 2},
			{id = 2144, chance = 8300, maxCount = 3},
			{id = 7386, chance = 1300},
			{id = 2165, chance = 3250},
			{id = 10016, chance = 950},
		}
	},
}

mType:register(monster)
