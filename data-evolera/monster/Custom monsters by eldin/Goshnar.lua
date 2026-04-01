local mType = Game.createMonsterType("Goshnar")
local monster = {}

monster.description = "king goshnar"
monster.experience = 4000
monster.outfit = {
	lookType = 2,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 10000
monster.maxHealth = 10000
monster.race = "blood"
monster.corpse = 2967
monster.speed = 554
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 5,
}

monster.strategiesTarget = {
	nearest = 70,
	defense = 15,
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
		{name = "melee", interval = 2000, skill = 72, attack = 68},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 10000, chance = 50, range = 7, minDamage = -100, maxDamage = -160, shootEffect = CONST_ANI_THROWINGSTAR},
}

monster.defenses = {
	defense = 55,
	armor = 28,
		{name = "speed", interval = 3000, chance = 30, speedchange = 650, duration = 20000},
}

monster.immunities = {
		{type = "fire", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "goshnar", chance = 50, interval = 2000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Renat Ulderek."},
		{text = "Ikem King Zambo."},
}

monster.loot = {
	{id = 2465, chance = 1000},
	{id = 2478, chance = 10000},
	{id = 2497, chance = 200},
	{id = 2490, chance = 1500},
	{id = 2434, chance = 200},
	{id = 2667, chance = 10000, maxCount = 2},
	{id = 2148, chance = 19000, maxCount = 45},
	{id = 2666, chance = 20000, maxCount = 2},
	{id = 2428, chance = 15000},
	{id = 2463, chance = 6000},
	{id = 2647, chance = 4000},
	{id = 2200, chance = 2000},
	{id = 2419, chance = 12000},
	{id = 2165, chance = 100},
	{id = 2399, chance = 30000, maxCount = 40},
	{id = 2377, chance = 2000},
}

mType:register(monster)
