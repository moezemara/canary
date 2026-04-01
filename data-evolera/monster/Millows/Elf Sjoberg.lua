local mType = Game.createMonsterType("elf sjoberg")
local monster = {}

monster.description = "a elf sjoberg"
monster.experience = 175
monster.outfit = {
	lookType = 63,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1824000000
monster.maxHealth = 1824000000
monster.race = "blood"
monster.corpse = 6011
monster.speed = 600
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
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 1000, minDamage = -7500000, maxDamage = -8500000},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 75, range = 7, minDamage = -3000000, maxDamage = -4500000, shootEffect = CONST_ANI_ARROW},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1000, chance = 75, range = 7, minDamage = -3000000, maxDamage = -4500000, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGY},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 75, range = 7, minDamage = -3000000, maxDamage = -4500000, shootEffect = CONST_ANI_SUDDENDEATH},
}

monster.defenses = {
	defense = 20,
	armor = 15,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 20, minDamage = 42, maxDamage = 68},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Feel my wrath!"},
		{text = "For the Daughter of the Stars!"},
		{text = "I'll bring balance upon you!"},
		{text = "Tha'shi Cenath!"},
		{text = "Vihil Ealuel!"},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
}

mType:register(monster)
