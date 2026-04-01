local mType = Game.createMonsterType("The Hag")
local monster = {}

monster.description = "the hag"
monster.experience = 510
monster.outfit = {
	lookType = 264,
	lookHead = 78,
	lookBody = 97,
	lookLegs = 95,
	lookFeet = 95,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 715
monster.maxHealth = 715
monster.race = "blood"
monster.corpse = 7349
monster.speed = 205
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
	staticAttackChance = 78,
	targetDistance = 5,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -53, maxDamage = -173},
		{name = "drunk", interval = 3000, chance = 35, range = 5, radius = 1, target = 1, duration = 15000},
		{name = "speed", interval = 4000, chance = 55, range = 5, radius = 1, target = 1, duration = 12000, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 25,
	armor = 24,
		{name = "combat", type = COMBAT_HEALING, interval = 2000, chance = 35, minDamage = 95, maxDamage = 155},
		{name = "invisible", interval = 3000, chance = 50, duration = 8000},
}

monster.summons = {
		{name = "Ghost", chance = 26, interval = 2000, max = 1},
		{name = "Crypt Shambler", chance = 26, interval = 2000, max = 1},
}

monster.voices = {
	interval = 2000,
	chance = 5,
		{text = "If you think I am to old to fight then you're wrong!"},
		{text = "I've forgotten more things then you have ever learned!"},
		{text = "Let me teach you a few things youngster!"},
		{text = "I'll teach you respect for the old!"},
}

mType:register(monster)
