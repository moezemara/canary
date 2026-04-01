local mType = Game.createMonsterType("Mercury Blob")
local monster = {}

monster.description = "a mercury blob"
monster.experience = 180
monster.outfit = {
	lookType = 316,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 150
monster.maxHealth = 150
monster.race = "undead"
monster.corpse = 9964
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
		{name = "melee", interval = 2000, skill = 28, attack = 33},
		{name = "drunk", interval = 5000, chance = 10, range = 4, target = 1, duration = 15000, effect = CONST_ME_STUN, shootEffect = CONST_ANI_HOLY},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 3000, chance = 5, range = 5, target = 1, minDamage = -20, maxDamage = -40, effect = CONST_ME_ENERGY, shootEffect = CONST_ANI_ENERGY},
}

monster.defenses = {
	defense = 10,
	armor = 10,
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = 15},
		{type = COMBAT_EARTHDAMAGE, percent = 70},
		{type = COMBAT_ICEDAMAGE, percent = 10},
		{type = COMBAT_PHYSICALDAMAGE, percent = 20},
		{type = COMBAT_HOLYDAMAGE, percent = 75},
}

monster.immunities = {
		{type = "death", condition = true},
}

monster.summons = {
		{name = "Mercury Blob", chance = 10, interval = 3000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Crackle"},
}

monster.loot = {
	{id = 9966, chance = 35000},
}

mType:register(monster)
