local mType = Game.createMonsterType("small plant")
local monster = {}

monster.description = "a small plant"
monster.experience = 368475000000
monster.outfit = {
	lookType = 221,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1200000000
monster.maxHealth = 1200000000
monster.race = "venom"
monster.corpse = 6062
monster.speed = 280
monster.manaCost = 0

monster.changeTarget = {
	interval = 500,
	chance = 90,
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
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 100,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 1000, minDamage = -3000000, maxDamage = -4500000},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 2000, chance = 13, range = 7, minDamage = 20000, maxDamage = -120000},
		{name = "combat", type = COMBAT_DEATHDAMAGE, interval = 1000, chance = 30, range = 7, radius = 7, target = 1, minDamage = -7000000, maxDamage = -8200000, shootEffect = CONST_ANI_EARTH, effect = CONST_ME_SMALLPLANTS},
}

monster.defenses = {
	defense = 55,
	armor = 55,
		{name = "combat", type = COMBAT_HEALING, interval = 2000, chance = 15, minDamage = 130, maxDamage = 240},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Mother will alive!", yell = true},
		{text = "Mum, I love you!", yell = true},
		{text = "Mum, I'll kill those bastards for You!", yell = true},
}

mType:register(monster)
