local mType = Game.createMonsterType("Hand of Cursed Fate")
local monster = {}

monster.description = "a Hand of Cursed Fate"
monster.experience = 5000
monster.outfit = {
	lookType = 230,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 10500
monster.maxHealth = 10500
monster.race = "undead"
monster.corpse = 6312
monster.speed = 300
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
	runHealth = 1500,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 85, attack = 95},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 2000, chance = 22, range = 7, minDamage = -150, maxDamage = -900, effect = CONST_ME_BLUESHIMMER},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 20, range = 7, minDamage = -150, maxDamage = -840, effect = CONST_ME_BLUESHIMMER},
}

monster.defenses = {
	defense = 35,
	armor = 25,
		{name = "combat", type = COMBAT_HEALING, interval = 2000, chance = 10, minDamage = 150, maxDamage = 555},
		{name = "speed", interval = 2000, chance = 25, speedchange = 700, duration = 8000},
		{name = "invisible", interval = 3000, chance = 20, duration = 4000},
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = -15},
		{type = COMBAT_HOLYDAMAGE, percent = -15},
}

monster.immunities = {
		{type = "death", condition = true},
		{type = "energy", condition = true},
		{type = "fire", condition = true},
		{type = "poison", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2654, chance = 35000},
	{id = 2152, chance = 40000, maxCount = 5},
	{id = 8974, chance = 1300},
	{id = 2463, chance = 5500},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2487, chance = 4500},
			{id = 2476, chance = 6500},
			{id = 2148, chance = 100000, maxCount = 65},
			{id = 6500, chance = 13500},
			{id = 2153, chance = 2000},
			{id = 7414, chance = 1000},
		}
	},
}

mType:register(monster)
