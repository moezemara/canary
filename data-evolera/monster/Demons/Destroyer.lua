local mType = Game.createMonsterType("Destroyer")
local monster = {}

monster.description = "a Destroyer"
monster.experience = 2500
monster.outfit = {
	lookType = 236,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 3700
monster.maxHealth = 3700
monster.race = "blood"
monster.corpse = 6320
monster.speed = 270
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
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 70, attack = 75},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 15, range = 7, minDamage = -90, maxDamage = -205, shootEffect = CONST_ANI_LARGEROCK},
}

monster.defenses = {
	defense = 44,
	armor = 39,
		{name = "speed", interval = 2000, chance = 7, speedchange = 380, duration = 8000},
}

monster.elements = {
		{type = COMBAT_EARTHDAMAGE, percent = 20},
		{type = COMBAT_PHYSICALDAMAGE, percent = 15},
		{type = COMBAT_ICEDAMAGE, percent = -10},
		{type = COMBAT_FIREDAMAGE, percent = 30},
		{type = COMBAT_DEATHDAMAGE, percent = 15},
		{type = COMBAT_HOLYDAMAGE, percent = -10},
}

monster.immunities = {
		{type = "energy", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Destructiooooon!"},
		{text = "It's a good day to destroy!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 82},
	{id = 2645, chance = 2222},
	{id = 2152, chance = 20000, maxCount = 3},
	{id = 2393, chance = 1300},
	{id = 5741, chance = 1000},
	{id = 7419, chance = 1900},
	{id = 2666, chance = 30000, maxCount = 5},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2463, chance = 6666},
			{id = 2416, chance = 9999},
			{id = 2489, chance = 2500},
			{id = 2150, chance = 3500, maxCount = 2},
			{id = 7427, chance = 1500},
		}
	},
}

mType:register(monster)
