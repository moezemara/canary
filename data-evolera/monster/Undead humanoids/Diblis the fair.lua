local mType = Game.createMonsterType("Diblis the fair")
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
monster.speed = 280
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
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 1000, chance = 12, target = 1, minDamage = 0, maxDamage = -155, effect = CONST_ME_MORTAREA, shootEffect = CONST_ANI_SUDDENDEATH},
}

monster.defenses = {
	defense = 30,
	armor = 30,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 12, minDamage = 100, maxDamage = 235},
		{name = "invisible", interval = 3000, chance = 25, duration = 6000},
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = -10},
		{type = COMBAT_HOLYDAMAGE, percent = -15},
		{type = COMBAT_FIREDAMAGE, percent = -10},
}

monster.immunities = {
		--{type = "lifedrain", condition = true},
		{type = "death", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "Banshee", chance = 50, interval = 4500, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "I envy you to be slain by someone as beautiful as me."},
		{text = "I will drain your ugly corpses of the last drop of blood."},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 98},
	{id = 2152, chance = 50000, maxCount = 5},
	{id = 8978, chance = 100000},
	{id = 2216, chance = 14111},
	{id = 7598, chance = 12800},
	{id = 2534, chance = 8300},
	{id = 2144, chance = 8980, maxCount = 2},
	{id = 8903, chance = 7777},
}

mType:register(monster)
