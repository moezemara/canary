local mType = Game.createMonsterType("Arachir the ancient one")
local monster = {}

monster.description = "a vampire lord"
monster.experience = 1800
monster.outfit = {
	lookType = 287,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1600
monster.maxHealth = 1600
monster.race = "undead"
monster.corpse = 8937
monster.speed = 300
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 10,
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
		{name = "melee", interval = 2000, skill = 70, attack = 95},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 9000, chance = 100, radius = 3, target = 0, minDamage = -120, maxDamage = -300, effect = CONST_ME_MORTAREA},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 1000, chance = 12, target = 1, minDamage = 0, maxDamage = -120, effect = CONST_ME_MORTAREA, shootEffect = CONST_ANI_SUDDENDEATH},
}

monster.defenses = {
	defense = 30,
	armor = 30,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 12, minDamage = 100, maxDamage = 235},
		{name = "invisible", interval = 3000, chance = 25, duration = 6000},
		{name = "outfit", interval = 4500, chance = 30, duration = 4000},
}

monster.elements = {
		{type = COMBAT_HOLYDAMAGE, percent = -15},
		{type = COMBAT_FIREDAMAGE, percent = -10},
}

monster.immunities = {
		--{type = "lifedrain", condition = true},
		{type = "death", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "Lich", chance = 100, interval = 9000, max = 1},
		{name = "Lich", chance = 100, interval = 9000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "I was the shadow that haunted the cradle of humanity!"},
		{text = "I exist since eons and you want to defy me?"},
		{text = "Can you feel the passage of time, mortal?"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 98},
	{id = 2152, chance = 50000, maxCount = 5},
	{id = 8978, chance = 100000},
	{id = 2216, chance = 11111},
	{id = 7598, chance = 9800},
	{id = 2534, chance = 6300},
	{id = 2144, chance = 8980, maxCount = 2},
}

mType:register(monster)
