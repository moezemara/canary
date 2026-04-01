local mType = Game.createMonsterType("Acid Blob")
local monster = {}

monster.description = "an acid blob"
monster.experience = 250
monster.outfit = {
	lookType = 314,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 250
monster.maxHealth = 250
monster.race = "venom"
monster.corpse = 9962
monster.speed = 210
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 0,
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
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -0, maxDamage = -80},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 3000, chance = 25, radius = 4, minDamage = -10, maxDamage = -22, effect = CONST_ME_GREENSPARK},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 3000, chance = 8, length = 5, spread = 0, minDamage = -49, maxDamage = -54, effect = CONST_ME_POISON},
}

monster.defenses = {
	defense = 10,
	armor = 10,
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = -5},
		{type = COMBAT_ICEDAMAGE, percent = 8},
		{type = COMBAT_ENERGYDAMAGE, percent = -10},
}

monster.immunities = {
		{type = "death", condition = true},
		{type = "earth", condition = true},
}

monster.summons = {
		{name = "Acid Blob", chance = 8, interval = 4000, max = 1},
}

monster.loot = {
	{id = 9967, chance = 28000},
}

mType:register(monster)
