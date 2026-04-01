local mType = Game.createMonsterType("Druid")
local monster = {}

monster.description = "a druid"
monster.experience = 2500
monster.outfit = {
	lookType = 128,
	lookHead = 78,
	lookBody = 120,
	lookLegs = 68,
	lookFeet = 97,
	lookAddons = 1,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1500
monster.maxHealth = 1500
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
		{name = "melee", interval = 2000, skill = 40, attack = 40},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 80, range = 7, radius = 4, target = 1, minDamage = -150, maxDamage = -200, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 4000, chance = 20, range = 7, radius = 2, target = 1, minDamage = -100, maxDamage = -200, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
}

monster.defenses = {
	defense = 50,
	armor = 35,
		{name = "combat", type = COMBAT_HEALING, interval = 2000, chance = 60, minDamage = 700, maxDamage = 1000},
		{name = "speed", interval = 5000, chance = 30, speedchange = 700, duration = 20000},
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

monster.summons = {
		{name = "fire elemental", chance = 17, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Let's have a fight!"},
		{text = "Welcome to my battleground."},
		{text = "Have you seen princess Lumelia?"},
		{text = "I will sing a tune at your grave."},
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
