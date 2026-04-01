local mType = Game.createMonsterType("Training Monk")
local monster = {}

monster.description = "a Training Monk"
monster.experience = 0
monster.outfit = {
	lookType = 57,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 60000
monster.maxHealth = 60000
monster.race = "blood"
monster.corpse = 3058
monster.speed = 250
monster.manaCost = 1000

monster.changeTarget = {
	interval = 2000,
	chance = 5,
}

monster.strategiesTarget = {
	nearest = 70,
	defense = 20,
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
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 55, attack = 1},
}

monster.defenses = {
	defense = 52,
	armor = 25,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 17, minDamage = 100000, maxDamage = 100000},
		{name = "speed", interval = 1000, chance = 10, speedchange = 1100, duration = 2000},
}

monster.immunities = {
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "You think you are strong?!?"},
}

mType:register(monster)
