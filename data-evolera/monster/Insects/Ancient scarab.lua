local mType = Game.createMonsterType("ancient scarab")
local monster = {}

monster.description = "a ancient scarab"
monster.experience = 720
monster.outfit = {
	lookType = 79,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1000
monster.maxHealth = 1000
monster.race = "venom"
monster.corpse = 6021
monster.speed = 330
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
		{name = "melee", interval = 2000, minDamage = -30, maxDamage = -130},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 12, range = 7, minDamage = -15, maxDamage = -135, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISON},
		{name = "speed", interval = 1000, chance = 13, range = 7, speedchange = -700, duration = 25000, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISON},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 3000, chance = 17, radius = 5, target = 0, minDamage = -30, maxDamage = -100, effect = CONST_ME_POISON},
}

monster.defenses = {
	defense = 20,
	armor = 25,
		{name = "speed", interval = 1000, chance = 8, speedchange = 350, duration = 9000},
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 30},
		{type = COMBAT_ENERGYDAMAGE, percent = 20},
		{type = COMBAT_ICEDAMAGE, percent = -5},
		{type = COMBAT_FIREDAMAGE, percent = -20},
}

monster.immunities = {
		{type = "earth", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "larva", chance = 15, interval = 1000, max = 1},
}

monster.loot = {
	{id = 2150, chance = 1200, maxCount = 4},
	{id = 2148, chance = 100000, maxCount = 90},
	{id = 2162, chance = 2500},
	{id = 2463, chance = 2222},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2148, chance = 99900, maxCount = 22},
			{id = 2135, chance = 1428},
			{id = 2159, chance = 555, maxCount = 4},
			{id = 2142, chance = 800},
			{id = 2440, chance = 200},
			{id = 2540, chance = 500},
		}
	},
}

mType:register(monster)
