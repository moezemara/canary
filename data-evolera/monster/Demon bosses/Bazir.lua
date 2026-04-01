local mType = Game.createMonsterType("Bazir")
local monster = {}

monster.description = "Bazir"
monster.experience = 30000
monster.outfit = {
	lookType = 35,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 110000
monster.maxHealth = 110000
monster.race = "fire"
monster.corpse = 2916
monster.speed = 530
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 10,
}

monster.strategiesTarget = {
	nearest = 65,
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
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 3000,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 200, attack = 250},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 1000, chance = 7, range = 7, minDamage = -100, maxDamage = -1000, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_POFF},
		{name = "drunk", interval = 1000, chance = 7, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYAREA},
		{name = "strength", interval = 1000, chance = 9, range = 7, shootEffect = CONST_ANI_LARGEROCK, effect = CONST_ME_ENERGYAREA},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 13, radius = 8, target = 0, minDamage = -400, maxDamage = -700, effect = CONST_ME_BLUEBUBBLE},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 1000, chance = 10, radius = 8, target = 0, minDamage = -400, maxDamage = -700, effect = CONST_ME_GREENSHIMMER},
		{name = "speed", interval = 1000, chance = 12, radius = 6, target = 0, speedchange = -1900, duration = 60000, effect = CONST_ME_POISON},
		{name = "strength", interval = 1000, chance = 8, radius = 5, target = 0, effect = CONST_ME_BLACKSPARK},
		{name = "outfit", interval = 1000, chance = 2, radius = 8, target = 0, duration = 5000, effect = CONST_ME_BLUEBUBBLE},
		{name = "outfit", interval = 1000, chance = 2, radius = 8, target = 0, duration = 5000, effect = CONST_ME_BLUEBUBBLE},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 34, range = 7, radius = 7, target = 1, minDamage = -100, maxDamage = -900, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 15, length = 8, spread = 0, minDamage = -500, maxDamage = -850, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 160,
	armor = 160,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 15, minDamage = 5000, maxDamage = 10000},
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 25, minDamage = 2000, maxDamage = 3000},
		{name = "speed", interval = 1000, chance = 8, speedchange = 1901, duration = 5000},
		{name = "invisible", interval = 1000, chance = 4, duration = 10000},
		{name = "invisible", interval = 1000, chance = 17, duration = 2000},
		{name = "outfit", interval = 1000, chance = 2, duration = 7000},
}

monster.immunities = {
		{type = "energy", condition = true},
		{type = "fire", condition = true},
		{type = "poison", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "bazir", chance = 15, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "COME HERE! FREE ITEMS FOR EVERYONE!", yell = true},
		{text = "BOW TO THE POWER OF THE RUTHLESS SEVEN!"},
		{text = "Slay your friends and I will spare you!", yell = true},
		{text = "DON'T BE AFRAID! I AM COMING IN PEACE!", yell = true},
}

monster.loot = {
	{id = 2142, chance = 3500},
	{id = 2231, chance = 9000},
	{id = 2144, chance = 15000, maxCount = 15},
	{id = 2158, chance = 1500},
	{id = 2195, chance = 4000},
	{id = 2192, chance = 2500},
	{id = 2125, chance = 1500},
	{id = 2124, chance = 5500},
	{id = 2462, chance = 11000},
	{id = 2387, chance = 20000},
	{id = 2434, chance = 4500},
	{id = 2167, chance = 13500},
	{id = 2432, chance = 17000},
	{id = 2393, chance = 12500},
	{id = 2148, chance = 99900, maxCount = 100},
	{id = 2148, chance = 88800, maxCount = 100},
	{id = 2148, chance = 77700, maxCount = 100},
	{id = 2148, chance = 66600, maxCount = 100},
	{id = 2179, chance = 8000},
	{id = 2033, chance = 7500},
	{id = 2418, chance = 4500},
	{id = 2182, chance = 3500},
	{id = 2155, chance = 1500},
	{id = 2188, chance = 2500},
	{id = 2396, chance = 7500},
	{id = 2177, chance = 1000},
	{id = 2162, chance = 11500},
	{id = 2472, chance = 3000},
	{id = 2514, chance = 7500},
	{id = 2164, chance = 5000},
	{id = 2178, chance = 4000},
	{id = 2176, chance = 12000},
	{id = 2171, chance = 4500},
	{id = 2200, chance = 4500},
	{id = 1982, chance = 2600},
	{id = 2214, chance = 13000},
	{id = 2123, chance = 3500},
	{id = 2170, chance = 13000},
	{id = 2402, chance = 15500},
	{id = 2436, chance = 5000},
	{id = 2150, chance = 13500, maxCount = 20},
	{id = 2145, chance = 9500, maxCount = 5},
	{id = 2149, chance = 15500, maxCount = 10},
	{id = 2146, chance = 13500, maxCount = 10},
	{id = 2165, chance = 9500},
	{id = 2197, chance = 4000},
	{id = 2174, chance = 2500},
	{id = 2151, chance = 14000, maxCount = 7},
	{id = 2112, chance = 14500},
	{id = 2421, chance = 13500},
	{id = 2377, chance = 20000},
	{id = 3955, chance = 100},
	{id = 2185, chance = 3500},
	{id = 2143, chance = 12500, maxCount = 15},
}

mType:register(monster)
