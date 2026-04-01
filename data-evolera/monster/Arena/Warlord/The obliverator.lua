local mType = Game.createMonsterType("The Obliverator")
local monster = {}

monster.description = "the obliverator"
monster.experience = 6000
monster.outfit = {
	lookType = 35,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 10500
monster.maxHealth = 10500
monster.race = "fire"
monster.corpse = 7349
monster.speed = 280
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 5,
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
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 120, attack = 120},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 20, range = 5, radius = 7, target = 1, minDamage = -100, maxDamage = -350, effect = CONST_ME_FIREAREA, shootEffect = CONST_ANI_FIRE},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 3000, chance = 25, length = 8, spread = 0, minDamage = -200, maxDamage = -400, effect = CONST_ME_ENERGY},
}

monster.defenses = {
	defense = 45,
	armor = 40,
		{name = "combat", type = COMBAT_HEALING, interval = 4000, chance = 5, minDamage = 50, maxDamage = 200},
}

monster.elements = {
		{type = COMBAT_HOLYDAMAGE, percent = -20},
		{type = COMBAT_DEATHDAMAGE, percent = 15},
		{type = COMBAT_ENERGYDAMAGE, percent = 50},
}

monster.immunities = {
		{type = "fire", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "fire elemental", chance = 25, interval = 2000, max = 1},
}

monster.voices = {
	interval = 1000,
	chance = 10,
		{text = "NO ONE WILL BEAT ME!"},
}

mType:register(monster)
