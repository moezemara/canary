local mType = Game.createMonsterType("Son of Verminor")
local monster = {}

monster.description = "the Son of Verminor"
monster.experience = 5900
monster.outfit = {
	lookType = 19,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 8500
monster.maxHealth = 8500
monster.race = "venom"
monster.corpse = 1496
monster.speed = 220
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
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 95, attack = 100},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 15, range = 7, minDamage = -145, maxDamage = -300, shootEffect = CONST_ANI_POISON},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 10, range = 7, radius = 3, target = 0, minDamage = -115, maxDamage = -600, effect = CONST_ME_POISON},
}

monster.defenses = {
	defense = 32,
	armor = 23,
		{name = "outfit", interval = 4200, duration = 2000},
		{name = "outfit", interval = 6200, duration = 2000},
		{name = "outfit", interval = 8200, duration = 2000},
}

monster.immunities = {
		{type = "poison", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Blub!", yell = true},
		{text = "Blub! Blub!", yell = true},
		{text = "Come'on Daddy! Help me", yell = true},
}

mType:register(monster)
