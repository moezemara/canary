local mType = Game.createMonsterType("Undead Gladiator")
local monster = {}

monster.description = "a undead gladiator"
monster.experience = 800
monster.outfit = {
	lookType = 306,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1000
monster.maxHealth = 1000
monster.race = "undead"
monster.corpse = 9823
monster.speed = 270
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
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -0, maxDamage = -250},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 14, range = 7, minDamage = -0, maxDamage = -135, shootEffect = CONST_ANI_WHIRLWINDSWORD},
}

monster.defenses = {
	defense = 45,
	armor = 40,
		{name = "invisible", interval = 5000, chance = 50, duration = 5000},
}

monster.elements = {
		{type = COMBAT_EARTHDAMAGE, percent = -5},
		{type = COMBAT_HOLYDAMAGE, percent = 10},
		{type = COMBAT_FIREDAMAGE, percent = 80},
		{type = COMBAT_ENERGYDAMAGE, percent = 20},
		{type = COMBAT_DEATHDAMAGE, percent = -5},
}

monster.immunities = {
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 2500,
	chance = 10,
		{text = "Let's battle it out in a duel!"},
		{text = "Bring it!"},
		{text = "I'll fight here in eternity and beyond."},
		{text = "I will not give up!"},
		{text = "Another foolish adventurer who tries to beat me."},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 75},
}

mType:register(monster)
