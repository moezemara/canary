local mType = Game.createMonsterType("Stone Dragon")
local monster = {}

monster.description = "a stone dragon"
monster.experience = 150
monster.outfit = {
	lookType = 95,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 70000000
monster.maxHealth = 70000000
monster.race = "undead"
monster.corpse = 6027
monster.speed = 850
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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 30,
}

monster.attacks = {
		{name = "melee", interval = 20, skill = 45, attack = 600000},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 10, chance = 24, range = 7, minDamage = -500000, maxDamage = -900000, shootEffect = CONST_ANI_LARGEROCK},
}

monster.defenses = {
	defense = 20,
	armor = 26,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 10, minDamage = 500000, maxDamage = 600000},
}

monster.immunities = {
		{type = "fire", condition = true},
		{type = "poison", condition = true},
		--{type = "lifedrain", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Harrrr Harrrr!"},
		{text = "Stone sweet stone."},
		{text = "Feel my claws, softskin."},
		{text = "Chhhhhrrrrk!"},
		{text = "There is a stone in your shoe!"},
}

monster.loot = {
	{id = 2157, chance = 100000, maxCount = 2},
	{id = 2671, chance = 33333, maxCount = 2},
	{id = 2666, chance = 33333, maxCount = 3},
	{id = 2457, chance = 20000},
	{id = 2513, chance = 25000},
	{id = 2209, chance = 3333},
	{id = 2394, chance = 5000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2489, chance = 2500},
			{id = 2148, chance = 100000, maxCount = 5},
		}
	},
}

mType:register(monster)
