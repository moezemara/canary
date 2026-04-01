local mType = Game.createMonsterType("Gigantius")
local monster = {}

monster.description = "a gigantius"
monster.experience = 0
monster.outfit = {
	lookType = 55,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 380000000
monster.maxHealth = 380000000
monster.race = "undead"
monster.corpse = 5999
monster.speed = 300
monster.manaCost = 590

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
		{name = "melee", interval = 1000, minDamage = -2200000, maxDamage = -2500000},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 2000, chance = 15, range = 2, minDamage = -2000000, maxDamage = -3000000, shootEffect = CONST_ANI_LARGEROCK},
}

monster.defenses = {
	defense = 18,
	armor = 10,
}

monster.immunities = {
		{type = "paralyze", condition = true},
}

monster.voices = {
	interval = 10000,
	chance = 100,
		{text = "Mmpff.."},
}

mType:register(monster)
