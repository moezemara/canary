local mType = Game.createMonsterType("The Masked Marauder")
local monster = {}

monster.description = "the masked marauder"
monster.experience = 3500
monster.outfit = {
	lookType = 234,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 6800
monster.maxHealth = 6800
monster.race = "blood"
monster.corpse = 7349
monster.speed = 250
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
	canPushCreatures = true,
	staticAttackChance = 80,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 90, attack = 120},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 30, minDamage = -38, maxDamage = -300, shootEffect = CONST_ANI_THROWINGKNIFE},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 2000, chance = 15, length = 4, spread = 2, minDamage = -30, maxDamage = -120, effect = CONST_ME_PURPLENOTE},
}

monster.defenses = {
	defense = 35,
	armor = 45,
}

monster.elements = {
		{type = COMBAT_HOLYDAMAGE, percent = -20},
}

monster.immunities = {
		{type = "fire", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Didn't you leave your house door open?"},
		{text = "Oops, your shoelaces are open!"},
}

mType:register(monster)
