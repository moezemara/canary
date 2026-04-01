local mType = Game.createMonsterType("Energy Overlord")
local monster = {}

monster.description = "an Energy Overlord"
monster.experience = 2800
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
monster.health = 4000
monster.maxHealth = 4000
monster.race = "undead"
monster.corpse = 8966
monster.speed = 290
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
		{name = "melee", interval = 2000, skill = 75, attack = 80},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 2000, chance = 25, length = 7, spread = 0, minDamage = 0, maxDamage = -800, effect = CONST_ME_PURPLEENERGY},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1000, chance = 11, range = 3, target = 1, minDamage = 0, maxDamage = -200, effect = CONST_ME_PURPLEENERGY},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 9, radius = 5, target = 0, minDamage = -50, maxDamage = -200, effect = CONST_ME_BIGPLANTS},
}

monster.defenses = {
	defense = 40,
	armor = 40,
		{name = "combat", type = COMBAT_HEALING, interval = 2000, chance = 15, minDamage = 90, maxDamage = 150},
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 20},
		{type = COMBAT_FIREDAMAGE, percent = -20},
}

monster.immunities = {
		{type = "ice", condition = true},
		{type = "energy", condition = true},
		{type = "poison", condition = true},
		{type = "invisible", condition = true},
}

mType:register(monster)
