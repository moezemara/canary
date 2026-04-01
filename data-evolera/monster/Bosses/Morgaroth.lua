local mType = Game.createMonsterType("Morgaroth")
local monster = {}

monster.description = "Morgaroth"
monster.experience = 15000
monster.outfit = {
	lookType = 12,
	lookHead = 0,
	lookBody = 94,
	lookLegs = 79,
	lookFeet = 79,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 55000
monster.maxHealth = 55000
monster.race = "undead"
monster.corpse = 6068
monster.speed = 400
monster.manaCost = 0

monster.changeTarget = {
	interval = 10000,
	chance = 20,
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
	staticAttackChance = 98,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -700, maxDamage = -2000},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 3000, chance = 35, range = 7, radius = 7, target = 1, minDamage = -700, maxDamage = -1200, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "melee", interval = 1800, chance = 40, range = 7, radius = 5, target = 0, minDamage = -250, maxDamage = -400, effect = CONST_ME_BLACKSPARK},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 3000, chance = 30, length = 8, spread = 0, minDamage = -300, maxDamage = -1000, effect = CONST_ME_ENERGY},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2500, chance = 20, range = 7, radius = 5, target = 0, minDamage = -200, maxDamage = -480, effect = CONST_ME_GREENSHIMMER},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 15, range = 7, radius = 13, target = 0, minDamage = -250, maxDamage = -500, effect = CONST_ME_REDNOTE},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 20, radius = 14, target = 0, minDamage = -200, maxDamage = -450, effect = CONST_ME_BLUEBUBBLE},
		{name = "melee", interval = 3000, chance = 15, range = 7, radius = 3, target = 0, minDamage = -100, maxDamage = -200, effect = CONST_ME_BLUESHIMMER},
}

monster.defenses = {
	defense = 65,
	armor = 55,
		{name = "combat", type = COMBAT_HEALING, interval = 3000, chance = 35, minDamage = 300, maxDamage = 800},
		{name = "speed", interval = 4000, chance = 80, speedchange = 440, duration = 6000},
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = 100},
		{type = COMBAT_EARTHDAMAGE, percent = 100},
		{type = COMBAT_ENERGYDAMAGE, percent = 100},
		{type = COMBAT_DEATHDAMAGE, percent = 60},
		{type = COMBAT_PHYSICALDAMAGE, percent = 40},
		{type = COMBAT_ICEDAMAGE, percent = -25},
}

monster.immunities = {
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "Demon", chance = 33, interval = 4000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 30,
		{text = "I AM MORGAROTH, LORD OF THE TRIANGLE... AND YOU ARE LOST!", yell = true},
		{text = "MY SEED IS FEAR AND MY HARVEST ARE YOUR SOULS!", yell = true},
		{text = "THE TRIANGLE OF TERROR WILL RISE!", yell = true},
		{text = "ZATHROTH! LOOK AT THE DESTRUCTION I AM CAUSING IN YOUR NAME!", yell = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2148, chance = 50000, maxCount = 90},
	{id = 2143, chance = 10000, maxCount = 5},
	{id = 2396, chance = 19429},
	{id = 2462, chance = 20000},
	{id = 2214, chance = 16000},
	{
		id = 2003, chance = 100000,
		childs = {
			{id = 2387, chance = 20000},
			{id = 2393, chance = 60000},
			{id = 2195, chance = 16033},
			{id = 2421, chance = 7000},
			{id = 2522, chance = 5600},
			{id = 2192, chance = 24000},
		}
	},
}

mType:register(monster)
