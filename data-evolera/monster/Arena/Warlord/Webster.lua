local mType = Game.createMonsterType("Webster")
local monster = {}

monster.description = "webster"
monster.experience = 1200
monster.outfit = {
	lookType = 263,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1750
monster.maxHealth = 1750
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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 85,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 70, attack = 80},
		{name = "speed", interval = 2000, chance = 30, radius = 5, target = 0, speedchange = -500, duration = 7000, effect = CONST_ME_POFF},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 1000, chance = 18, range = 7, minDamage = -20, maxDamage = -80, shootEffect = CONST_ANI_SMALLICE},
}

monster.defenses = {
	defense = 34,
	armor = 39,
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = -15},
}

monster.immunities = {
		{type = "ice", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 2000,
	chance = 5,
		{text = "You are lost!"},
		{text = "Come my little morsel."},
}

mType:register(monster)
