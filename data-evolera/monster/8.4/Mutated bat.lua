local mType = Game.createMonsterType("Mutated Bat")
local monster = {}

monster.description = "a mutated bat"
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
monster.health = 900
monster.maxHealth = 900
monster.race = "blood"
monster.corpse = 9829
monster.speed = 245
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
		{name = "melee", interval = 2000, skill = 65, attack = 65},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 18, range = 7, minDamage = 90, maxDamage = -180, shootEffect = CONST_ANI_POISON},
		{name = "combat", type = COMBAT_DROWNDAMAGE, interval = 1000, chance = 8, radius = 6, target = 0, minDamage = -40, maxDamage = -100, effect = CONST_ME_WHITENOTE},
		{name = "drunk", interval = 1000, chance = 8, radius = 6, target = 0, duration = 15000},
}

monster.defenses = {
	defense = 30,
	armor = 30,
}

monster.immunities = {
		{type = "death", condition = true},
		{type = "earth", condition = true},
		{type = "drown", condition = true},
		{type = "invisible", condition = true},
		{type = "drunk", condition = true},
}

monster.voices = {
	interval = 2500,
	chance = 10,
		{text = "Shriiiiek", yell = true},
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
