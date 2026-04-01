local mType = Game.createMonsterType("Massive Energy Elemental")
local monster = {}

monster.description = "a massive energy elemental"
monster.experience = 850
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
monster.health = 1100
monster.maxHealth = 1100
monster.race = "undead"
monster.corpse = 1495
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
		{name = "melee", interval = 2000, skill = 75, attack = 60},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1000, chance = 11, range = 3, radius = 2, target = 1, minDamage = -200, maxDamage = -400, effect = CONST_ME_PURPLEENERGY},
}

monster.defenses = {
	defense = 30,
	armor = 30,
		{name = "combat", type = COMBAT_HEALING, interval = 2000, chance = 15, minDamage = 90, maxDamage = 150},
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 30},
		{type = COMBAT_HOLYDAMAGE, percent = 15},
		{type = COMBAT_DEATHDAMAGE, percent = 10},
}

monster.immunities = {
		{type = "ice", condition = true},
		{type = "energy", condition = true},
		{type = "fire", condition = true},
		{type = "invisible", condition = true},
}

mType:register(monster)
