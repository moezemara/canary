local mType = Game.createMonsterType("Koshei The Deathless")
local monster = {}

monster.description = "Koshei The Deathless"
monster.experience = 0
monster.outfit = {
	lookType = 99,
	lookHead = 95,
	lookBody = 116,
	lookLegs = 119,
	lookFeet = 115,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 2000
monster.maxHealth = 2000
monster.race = "undead"
monster.corpse = 6028
monster.speed = 390
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
		{name = "melee", interval = 2000, minDamage = -90, maxDamage = -170},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 3000, chance = 9, range = 1, minDamage = -60, maxDamage = -250, effect = CONST_ME_BLUESHIMMER},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 11, radius = 3, target = 0, minDamage = -70, maxDamage = -135, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 2000, chance = 9, length = 8, spread = 0, minDamage = -50, maxDamage = -140, effect = CONST_ME_MORTAREA},
		--{name = "cursecondition", interval = 3000, chance = 15, range = 1, minDamage = -54, maxDamage = -54},
		{name = "speed", interval = 2000, chance = 15, range = 7, speedchange = -900, duration = 30000, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 20,
	armor = 20,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 30, minDamage = 150, maxDamage = 300},
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = 80},
		{type = COMBAT_HOLYDAMAGE, percent = -15},
		{type = COMBAT_FIREDAMAGE, percent = -10},
}

monster.immunities = {
		{type = "death", condition = true},
		{type = "earth", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "bonebeast", chance = 16, interval = 1000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Your pain will be beyond imagination!"},
		{text = "You can't defeat me! I will ressurect and take your soul!"},
		{text = "Death is my ally!"},
		{text = "Welcome to my domain, visitor!"},
		{text = "You will be my toy on the other side!"},
		{text = "What a disgusting smell of life!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2171, chance = 1666},
	{id = 2656, chance = 709},
	{id = 7893, chance = 688},
	{id = 1987, chance = 100000},
}

mType:register(monster)
