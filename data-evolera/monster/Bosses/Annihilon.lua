local mType = Game.createMonsterType("Annihilon")
local monster = {}

monster.description = "annihilon"
monster.experience = 10000
monster.outfit = {
	lookType = 12,
	lookHead = 19,
	lookBody = 104,
	lookLegs = 96,
	lookFeet = 96,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 60000
monster.maxHealth = 60000
monster.race = "fire"
monster.corpse = 6068
monster.speed = 380
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
	staticAttackChance = 85,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 185, attack = 175},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 1000, chance = 11, length = 8, spread = 0, minDamage = 0, maxDamage = -600, effect = CONST_ME_MORTAREA},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 2000, chance = 15, radius = 4, target = 0, minDamage = -200, maxDamage = -700, effect = CONST_ME_ICEAREA},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 3000, chance = 18, radius = 5, target = 1, minDamage = -50, maxDamage = -255, effect = CONST_ME_GROUNDSHAKER},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 15, radius = 6, target = 1, minDamage = -50, maxDamage = -600, effect = CONST_ME_FIREAREA, shootEffect = CONST_ANI_FIRE},
}

monster.defenses = {
	defense = 55,
	armor = 60,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 14, minDamage = 400, maxDamage = 900},
		{name = "speed", interval = 1000, chance = 4, speedchange = 500, duration = 7000},
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = 20},
		{type = COMBAT_DEATHDAMAGE, percent = 20},
		{type = COMBAT_FIREDAMAGE, percent = -15},
}

monster.immunities = {
		--{type = "lifedrain", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Annihilation!", yell = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2148, chance = 100000, maxCount = 50},
	{id = 2150, chance = 5515, maxCount = 20},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2158, chance = 4300},
			{id = 2165, chance = 10000},
		}
	},
}

mType:register(monster)
