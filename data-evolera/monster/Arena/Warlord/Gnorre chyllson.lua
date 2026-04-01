local mType = Game.createMonsterType("Gnorre Chyllson")
local monster = {}

monster.description = "gnorre chyllson"
monster.experience = 4000
monster.outfit = {
	lookType = 251,
	lookHead = 11,
	lookBody = 9,
	lookLegs = 11,
	lookFeet = 85,
	lookAddons = 1,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 7100
monster.maxHealth = 7100
monster.race = "blood"
monster.corpse = 7349
monster.speed = 380
monster.manaCost = 0

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
		{name = "melee", interval = 2000, skill = 90, attack = 110},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 15, radius = 3, target = 0, minDamage = -210, maxDamage = -400, effect = CONST_ME_BLACKSPARK},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 1000, chance = 9, range = 7, target = 1, minDamage = -170, maxDamage = -240, effect = CONST_ME_GIANTICE, shootEffect = CONST_ANI_SNOWBALL},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 1000, chance = 13, length = 8, spread = 0, minDamage = 0, maxDamage = -230, effect = CONST_ME_BLUENOTE},
		--{name = "drowncondition", interval = 1000, chance = 11, radius = 4, target = 0, minDamage = -800, maxDamage = -1400, effect = CONST_ME_BLUEBUBBLE},
}

monster.defenses = {
	defense = 30,
	armor = 35,
}

monster.elements = {
		{type = COMBAT_HOLYDAMAGE, percent = 25},
		{type = COMBAT_PHYSICALDAMAGE, percent = -10},
		{type = COMBAT_ENERGYDAMAGE, percent = -20},
}

monster.immunities = {
		{type = "earth", condition = true},
		{type = "ice", condition = true},
		{type = "fire", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 2000,
	chance = 5,
		{text = "I am like the merciless northwind"},
		{text = "Snow will be your death shroud."},
}

mType:register(monster)
