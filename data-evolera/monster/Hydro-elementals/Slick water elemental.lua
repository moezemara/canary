local mType = Game.createMonsterType("Slick Water Elemental")
local monster = {}

monster.description = "a Slick water Elemental"
monster.experience = 450
monster.outfit = {
	lookType = 286,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 550
monster.maxHealth = 550
monster.race = "undead"
monster.corpse = 8965
monster.speed = 280
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
		{name = "melee", interval = 2000, skill = 55, attack = 55},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 20, range = 7, target = 1, minDamage = 0, maxDamage = -130, shootEffect = CONST_ANI_EARTH},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 1000, chance = 10, range = 6, target = 1, minDamage = 0, maxDamage = -220, shootEffect = CONST_ANI_SNOWBALL},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 2000, chance = 18, range = 4, target = 1, minDamage = 0, maxDamage = -103, shootEffect = CONST_ANI_SMALLICE},
}

monster.defenses = {
	defense = 30,
	armor = 30,
		{name = "combat", type = COMBAT_HEALING, interval = 2000, chance = 15, minDamage = 90, maxDamage = 150},
}

monster.elements = {
		{type = COMBAT_PHYSICALDAMAGE, percent = 40},
}

monster.immunities = {
		{type = "ice", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Blubb"},
		{text = "Splipsh Splash"},
}

mType:register(monster)
