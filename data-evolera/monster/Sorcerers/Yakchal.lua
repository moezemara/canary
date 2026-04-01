local mType = Game.createMonsterType("Yakchal")
local monster = {}

monster.description = "the wizard yakchal"
monster.experience = 4400
monster.outfit = {
	lookType = 149,
	lookHead = 0,
	lookBody = 47,
	lookLegs = 105,
	lookFeet = 105,
	lookAddons = 3,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 5400
monster.maxHealth = 5400
monster.race = "undead"
monster.corpse = 6081
monster.speed = 260
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 5,
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
	canPushCreatures = false,
	staticAttackChance = 50,
	targetDistance = 4,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 70, attack = 95},
		{name = "outfit", interval = 3000, chance = 10, range = 7, duration = 8000, effect = CONST_ME_BLUESHIMMER},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 2000, chance = 18, length = 6, spread = 4, minDamage = -50, maxDamage = -430, effect = CONST_ME_ICEATTACK},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 1000, chance = 14, range = 7, radius = 4, target = 1, minDamage = -30, maxDamage = -110, shootEffect = CONST_ANI_SNOWBALL, effect = CONST_ME_ICEAREA},
		{name = "speed", interval = 2000, chance = 11, range = 7, speedchange = -700, duration = 20000, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 50,
	armor = 65,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 25, minDamage = 50, maxDamage = 230},
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = -5},
}

monster.immunities = {
		{type = "ice", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "ice golem", chance = 25, interval = 2000, max = 1},
}

monster.voices = {
	interval = 1000,
	chance = 8,
		{text = "YOU BETTER DIE TO MY MINIONS BECAUSE YOU'LL WHISH YOU DID IF I COME FOR YOU!", yell = true},
		{text = "You are mine!"},
		{text = "I will make you all pay!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 80},
	{id = 7290, chance = 100000},
	{id = 5912, chance = 28000},
	{id = 7387, chance = 7777},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2195, chance = 13777},
			{id = 7459, chance = 9090},
		}
	},
}

mType:register(monster)
