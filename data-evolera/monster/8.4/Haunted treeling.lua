local mType = Game.createMonsterType("Haunted Treeling")
local monster = {}

monster.description = "a haunted treeling"
monster.experience = 1400000
monster.outfit = {
	lookType = 310,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 140000
monster.maxHealth = 140000
monster.race = "undead"
monster.corpse = 9867
monster.speed = 299
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
		{name = "melee", interval = 2000, skill = 55, attack = 55},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 2000, chance = 12, range = 1, radius = 4, target = 0, minDamage = -10000, maxDamage = -30000, effect = CONST_ME_REDSHIMMER},
		{name = "speed", interval = 3000, chance = 20, length = 5, spread = 0, speedchange = -600, duration = 30000, effect = CONST_ME_SMALLPLANTS},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 12, minDamage = 10000, maxDamage = -32000, effect = CONST_ME_PLANTATTACK, shootEffect = CONST_ANI_EARTH},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 12, radius = 4, target = 1, minDamage = -8000, maxDamage = -15000, effect = CONST_ME_STONES, shootEffect = CONST_ANI_EARTH},
}

monster.defenses = {
	defense = 55,
	armor = 50,
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = -5},
		{type = COMBAT_DEATHDAMAGE, percent = 1},
		{type = COMBAT_ICEDAMAGE, percent = 10},
		{type = COMBAT_HOLYDAMAGE, percent = 20},
}

monster.immunities = {
		{type = "earth", condition = true},
}

monster.voices = {
	interval = 7500,
	chance = 20,
		{text = "Knarrrz"},
		{text = "Huuhuuhuuhuuaarrr"},
		{text = "Knorrrrrr"},
}

monster.loot = {
	{id = 2787, chance = 25000, maxCount = 2},
	{id = 2250, chance = 65000},
	{id = 7443, chance = 500},
	{id = 2790, chance = 23000},
	{id = 2148, chance = 100000, maxCount = 92},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2788, chance = 10000},
			{id = 7618, chance = 5000},
			{id = 7588, chance = 2500},
			{id = 2146, chance = 2000},
			{id = 2213, chance = 1200},
			{id = 2515, chance = 300},
		}
	},
}

mType:register(monster)
