local mType = Game.createMonsterType("Norgle Glacierbeard")
local monster = {}

monster.description = "norgle glacierbeard"
monster.experience = 2100
monster.outfit = {
	lookType = 257,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 4300
monster.maxHealth = 4300
monster.race = "undead"
monster.corpse = 7349
monster.speed = 265
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
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 78,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 70, attack = 80},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 18, length = 5, spread = 0, minDamage = -15, maxDamage = -165, effect = CONST_ME_POFF},
		{name = "speed", interval = 1000, chance = 12, radius = 4, target = 0, speedchange = -700, effect = CONST_ME_ICEATTACK},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 1000, chance = 5, range = 6, radius = 4, target = 1, minDamage = -70, maxDamage = -180, effect = CONST_ME_STUN, shootEffect = CONST_ANI_SMALLICE},
}

monster.defenses = {
	defense = 50,
	armor = 35,
}

monster.immunities = {
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 2000,
	chance = 5,
		{text = "I'll extinguish you warmbloods."},
		{text = "REVENGE!"},
		{text = "Far too hot."},
		{text = "Revenge is sweetest when served cold."},
}

mType:register(monster)
