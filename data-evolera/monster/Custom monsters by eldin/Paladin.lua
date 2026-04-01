local mType = Game.createMonsterType("Paladin")
local monster = {}

monster.description = "a paladin"
monster.experience = 2500
monster.outfit = {
	lookType = 129,
	lookHead = 95,
	lookBody = 121,
	lookLegs = 40,
	lookFeet = 97,
	lookAddons = 1,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 2000
monster.maxHealth = 2000
monster.race = "blood"
monster.corpse = 3128
monster.speed = 360
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
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 90, range = 7, minDamage = -100, maxDamage = -300, shootEffect = CONST_ANI_REDSTAR},
		{name = "combat", type = COMBAT_HOLYDAMAGE, interval = 4000, chance = 100, range = 7, minDamage = -40, maxDamage = -60, shootEffect = CONST_ANI_HOLY},
}

monster.defenses = {
	defense = 50,
	armor = 35,
		{name = "combat", type = COMBAT_HEALING, interval = 7000, chance = 100, minDamage = 500, maxDamage = 700},
		{name = "speed", interval = 10000, chance = 100, speedchange = 500, duration = 20000},
}

monster.immunities = {
		{type = "energy", condition = true},
		{type = "fire", condition = true},
		{type = "poison", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 4000,
	chance = 100,
		{text = "Exori San"},
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
