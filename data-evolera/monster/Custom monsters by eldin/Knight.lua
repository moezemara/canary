local mType = Game.createMonsterType("Knight")
local monster = {}

monster.description = "a knight"
monster.experience = 2500
monster.outfit = {
	lookType = 131,
	lookHead = 113,
	lookBody = 95,
	lookLegs = 113,
	lookFeet = 116,
	lookAddons = 1,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 2500
monster.maxHealth = 2500
monster.race = "blood"
monster.corpse = 3128
monster.speed = 390
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 5,
}

monster.strategiesTarget = {
	nearest = 80,
	defense = 10,
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
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 1700, skill = 90, attack = 100},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 40, range = 7, radius = 2, target = 1, minDamage = -90, maxDamage = -160, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "strength", interval = 3000, chance = 30, radius = 1, target = 0, minDamage = -150, maxDamage = -200, effect = CONST_ME_BLACKSPARK},
}

monster.defenses = {
	defense = 50,
	armor = 75,
		{name = "combat", type = COMBAT_HEALING, interval = 5000, chance = 80, minDamage = 300, maxDamage = 500},
		{name = "speed", interval = 5000, chance = 30, speedchange = 500, duration = 20000},
}

monster.immunities = {
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Power by Melee!"},
}

monster.loot = {
	{id = 2544, chance = 27000, maxCount = 13},
	{id = 2456, chance = 13000},
	{id = 2487, chance = 600},
	{id = 2491, chance = 500},
	{id = 2488, chance = 500},
	{id = 2519, chance = 400},
	{id = 2392, chance = 500},
	{id = 2148, chance = 60000, maxCount = 100},
	{id = 2681, chance = 20000},
	{id = 2652, chance = 8000},
	{id = 2071, chance = 15000},
	{id = 2666, chance = 18000, maxCount = 2},
	{id = 2164, chance = 500},
	{id = 2744, chance = 20000},
	{id = 2120, chance = 20000},
	{id = 2661, chance = 12000},
	{id = 1949, chance = 45000},
	{id = 2377, chance = 1500},
	{id = 2391, chance = 1000},
	{id = 2121, chance = 5000},
}

mType:register(monster)
