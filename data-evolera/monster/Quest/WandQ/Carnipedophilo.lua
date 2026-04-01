local mType = Game.createMonsterType("Carnipedophilo")
local monster = {}

monster.description = "a Carnipedophilo"
monster.experience = 150
monster.outfit = {
	lookType = 120,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 500000000
monster.maxHealth = 500000000
monster.race = "venom"
monster.corpse = 6047
monster.speed = 600
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
		{name = "melee", interval = 20, skill = 40, attack = 50000000},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 5, range = 7, minDamage = -50000000, maxDamage = -60000000, shootEffect = CONST_ANI_EARTH},
		{name = "speed", interval = 1000, chance = 20, range = 7, speedchange = -850, duration = 3000, shootEffect = CONST_ANI_POISON, effect = CONST_ME_GREENSPARK},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 3, radius = 3, target = 0, minDamage = -4000000, maxDamage = -100000000, effect = CONST_ME_POISON},
}

monster.defenses = {
	defense = 15,
	armor = 25,
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = -20},
		{type = COMBAT_ENERGYDAMAGE, percent = 10},
		{type = COMBAT_ICEDAMAGE, percent = 7},
}

monster.immunities = {
		{type = "earth", condition = true},
		{type = "invisible", condition = true},
}

monster.loot = {
	{id = 2804, chance = 3000},
	{id = 2802, chance = 5000},
	{id = 2792, chance = 2500},
}

mType:register(monster)
