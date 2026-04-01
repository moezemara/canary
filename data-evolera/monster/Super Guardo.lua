local mType = Game.createMonsterType("Super Guardo")
local monster = {}

monster.description = "one of Durin's Guard"
monster.experience = 900000000
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
monster.health = 1670000000
monster.maxHealth = 1670000000
monster.race = "blood"
monster.corpse = 2983
monster.speed = 0
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8,
}

monster.strategiesTarget = {
	nearest = 500,
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
		{name = "melee", interval = 2000, skill = 110, attack = 600},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1000, chance = 15, range = 7, minDamage = -565, maxDamage = -1800, shootEffect = CONST_ANI_EARTH},
		{name = "outfit", interval = 1000, chance = 12, range = 7, duration = 5000},
}

monster.defenses = {
	defense = 45,
	armor = 40,
		{name = "speed", interval = 100000, chance = 1, speedchange = 520, duration = 4000},
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 150, minDamage = 1000000, maxDamage = 1100000},
}

monster.elements = {
		{type = COMBAT_EARTHDAMAGE, percent = 50},
		{type = COMBAT_HOLYDAMAGE, percent = 50},
		{type = COMBAT_FIREDAMAGE, percent = 15},
		{type = COMBAT_ENERGYDAMAGE, percent = 5},
		{type = COMBAT_PHYSICALDAMAGE, percent = 25},
		{type = COMBAT_ICEDAMAGE, percent = 30},
		{type = COMBAT_DEATHDAMAGE, percent = 30},
}

monster.immunities = {
		{type = "invisible", condition = true},
		{type = "paralyze", condition = true},
}

monster.voices = {
	interval = 2500,
	chance = 10,
		{text = "You wont defeat me, because got too strong items for you."},
		{text = "Come on and fight!"},
		{text = "Durin sent me here for a real fight."},
}

monster.loot = {
	{id = 2157, chance = 120000},
	{
		id = 2002, chance = 100000,
		childs = {
			{id = 2505, chance = 1800},
			{id = 9980, chance = 6325},
			{id = 2645, chance = 600},
			{id = 2523, chance = 9500},
			{id = 2504, chance = 2500},
			{id = 2503, chance = 2000},
		}
	},
}

mType:register(monster)
