local mType = Game.createMonsterType("Vampire Bride")
local monster = {}

monster.description = "a vampire bride"
monster.experience = 1050
monster.outfit = {
	lookType = 312,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1200
monster.maxHealth = 1200
monster.race = "blood"
monster.corpse = 9660
monster.speed = 220
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
		{name = "melee", interval = 2000, minDamage = -0, maxDamage = -200},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 20, range = 1, minDamage = -0, maxDamage = -150, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 8, range = 7, minDamage = -0, maxDamage = -150, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 35, range = 7, minDamage = -0, maxDamage = -170, shootEffect = CONST_ANI_ENERGY},
}

monster.defenses = {
	defense = 23,
	armor = 17,
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = 10},
		{type = COMBAT_EARTHDAMAGE, percent = 80},
		{type = COMBAT_ICEDAMAGE, percent = 15},
		{type = COMBAT_FIREDAMAGE, percent = -10},
		{type = COMBAT_HOLYDAMAGE, percent = -25},
}

monster.immunities = {
		{type = "death", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 4000,
	chance = 100,
		{text = "Kneel before your Mistress!"},
		{text = "Dead is the new alive."},
		{text = "Come, let me kiss you, darling. Oh wait, I meant kill."},
		{text = "Enjoy the pain - I know you love it."},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 84},
	{id = 7588, chance = 8000},
	{id = 7589, chance = 8000},
	{id = 2145, chance = 6000},
	{id = 2127, chance = 5000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 9837, chance = 2000},
			{id = 5670, chance = 1200},
			{id = 9808, chance = 1200},
			{id = 2195, chance = 300},
		}
	},
}

mType:register(monster)
