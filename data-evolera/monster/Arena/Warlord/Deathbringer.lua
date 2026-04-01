local mType = Game.createMonsterType("Deathbringer")
local monster = {}

monster.description = "deathbringer"
monster.experience = 5100
monster.outfit = {
	lookType = 231,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 10000
monster.maxHealth = 10000
monster.race = "undead"
monster.corpse = 7349
monster.speed = 300
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8,
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
	staticAttackChance = 85,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 90, attack = 110},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 12, range = 7, radius = 4, target = 1, minDamage = -80, maxDamage = -370, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_REDSPARK},
		--{name = "drowncondition", interval = 3000, chance = 20, length = 8, spread = 3, minDamage = -900, maxDamage = -1200, effect = CONST_ME_POFF},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 20, length = 8, spread = 3, minDamage = -200, maxDamage = -450, effect = CONST_ME_POISON},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 18, length = 8, spread = 3, minDamage = 0, maxDamage = -590, effect = CONST_ME_GREENSHIMMER},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 3000, chance = 15, range = 7, minDamage = -80, maxDamage = -390, effect = CONST_ME_MORTAREA, shootEffect = CONST_ANI_SUDDENDEATH},
}

monster.defenses = {
	defense = 45,
	armor = 45,
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = 35},
		{type = COMBAT_ICEDAMAGE, percent = -15},
}

monster.immunities = {
		{type = "death", condition = true},
		{type = "energy", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "YOU FOOLS WILL PAY!"},
		{text = "YOU ALL WILL DIE!!"},
		{text = "DEATH, DESTRUCTION!"},
		{text = "I will eat your soul!"},
}

mType:register(monster)
