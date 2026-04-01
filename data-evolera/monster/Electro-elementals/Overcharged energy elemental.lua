local mType = Game.createMonsterType("Overcharged Energy Elemental")
local monster = {}

monster.description = "an Orvercharged Energy Elemental"
monster.experience = 1300
monster.outfit = {
	lookType = 290,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1700
monster.maxHealth = 1700
monster.race = "undead"
monster.corpse = 8966
monster.speed = 300
monster.manaCost = 0

monster.changeTarget = {
	interval = 20000,
	chance = 15,
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
	canPushCreatures = false,
	staticAttackChance = 85,
	targetDistance = 1,
	runHealth = 1,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 95, attack = 85},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1000, chance = 11, radius = 4, target = 0, minDamage = 0, maxDamage = -250, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_PURPLEENERGY},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1000, chance = 12, range = 3, target = 1, minDamage = 0, maxDamage = -300, effect = CONST_ME_PURPLEENERGY},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 12, radius = 4, target = 0, minDamage = 0, maxDamage = -200, effect = CONST_ME_POFF},
}

monster.defenses = {
	defense = 35,
	armor = 35,
		{name = "combat", type = COMBAT_HEALING, interval = 2000, chance = 15, minDamage = 90, maxDamage = 150},
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 25},
}

monster.immunities = {
		{type = "ice", condition = true},
		{type = "energy", condition = true},
		{type = "invisible", condition = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 8303, chance = 2760, maxCount = 2},
	{id = 7439, chance = 2100},
	{id = 2150, chance = 4500, maxCount = 3},
	{id = 8920, chance = 2000},
}

mType:register(monster)
