local mType = Game.createMonsterType("Chakoya Windcaller")
local monster = {}

monster.description = "a Chakoya Windcaller"
monster.experience = 48
monster.outfit = {
	lookType = 260,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 84
monster.maxHealth = 84
monster.race = "blood"
monster.corpse = 7320
monster.speed = 270
monster.manaCost = 305

monster.changeTarget = {
	interval = 60000,
	chance = 0,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 50,
	targetDistance = 4,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 1000, chance = 15, range = 7, radius = 3, target = 0, minDamage = -5, maxDamage = -15, effect = CONST_ME_POFF},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1000, chance = 20, range = 7, minDamage = -5, maxDamage = -35, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_ENERGY},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 18, length = 3, spread = 2, minDamage = -5, maxDamage = -20, effect = CONST_ME_POFF},
}

monster.defenses = {
	defense = 30,
	armor = 30,
}

monster.immunities = {
		{type = "energy", condition = true},
}

monster.voices = {
	interval = 2000,
	chance = 5,
		{text = "Chikuva!"},
		{text = "Siqsiq ji jusipa!"},
		{text = "Jagura taluka taqua!"},
}

monster.loot = {
	{id = 2148, chance = 3333, maxCount = 25},
	{id = 7290, chance = 2000},
	{id = 7158, chance = 250},
}

mType:register(monster)
