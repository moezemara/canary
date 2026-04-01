local mType = Game.createMonsterType("Energy Elemental")
local monster = {}

monster.description = "an energy Elemental"
monster.experience = 450
monster.outfit = {
	lookType = 293,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 500
monster.maxHealth = 500
monster.race = "undead"
monster.corpse = 1495
monster.speed = 250
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
		{name = "melee", interval = 2000, skill = 55, attack = 50},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 2000, chance = 20, range = 6, radius = 2, target = 1, minDamage = -168, maxDamage = -220, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_PURPLEENERGY},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1000, chance = 11, range = 3, target = 1, minDamage = 0, maxDamage = -130, effect = CONST_ME_ENERGY},
		--{name = "energycondition", interval = 1000, chance = 15, radius = 3, target = 0},
}

monster.defenses = {
	defense = 50,
	armor = 50,
		{name = "combat", type = COMBAT_HEALING, interval = 2000, chance = 15, minDamage = 90, maxDamage = 150},
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 25},
		{type = COMBAT_HOLYDAMAGE, percent = 15},
}

monster.immunities = {
		{type = "ice", condition = true},
		{type = "fire", condition = true},
		{type = "energy", condition = true},
		{type = "invisible", condition = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 8303, chance = 1500, maxCount = 2},
	{id = 7439, chance = 2100},
	{id = 2150, chance = 4500, maxCount = 3},
	{id = 8920, chance = 1000},
}

mType:register(monster)
