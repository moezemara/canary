local mType = Game.createMonsterType("Durin")
local monster = {}

monster.description = "the dwarf king"
monster.experience = 4000
monster.outfit = {
	lookType = 70,
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
monster.corpse = 2983
monster.speed = 556
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 5,
}

monster.strategiesTarget = {
	nearest = 70,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 1100, skill = 75, attack = 69},
}

monster.defenses = {
	defense = 37,
	armor = 15,
		{name = "speed", interval = 3000, chance = 30, speedchange = 650, duration = 20000},
}

monster.immunities = {
		{type = "poison", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "dwarf guard", chance = 50, interval = 2000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Fear my Axe!"},
}

monster.loot = {
	{id = 2208, chance = 200},
	{id = 2417, chance = 4000},
	{id = 2513, chance = 7500},
	{id = 2387, chance = 600},
	{id = 2148, chance = 50000, maxCount = 30},
	{id = 2643, chance = 40000},
	{id = 2483, chance = 10000},
	{id = 2150, chance = 100},
	{id = 2457, chance = 2000},
	{id = 2787, chance = 55000, maxCount = 2},
}

mType:register(monster)
