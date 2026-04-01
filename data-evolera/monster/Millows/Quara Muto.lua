local mType = Game.createMonsterType("quara muto")
local monster = {}

monster.description = "a quara muto"
monster.experience = 1600
monster.outfit = {
	lookType = 20,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1080000000
monster.maxHealth = 1080000000
monster.race = "blood"
monster.corpse = 6067
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
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 1000, minDamage = -4000000, maxDamage = -4500000},
		{name = "combat", type = COMBAT_DROWNDAMAGE, interval = 1000, chance = 100, range = 1, target = 1, minDamage = -3000000, maxDamage = -3500000, effect = CONST_ME_BLUEBUBBLE},
}

monster.defenses = {
	defense = 45,
	armor = 40,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 25, minDamage = 10000000, maxDamage = 20000000},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Gnarrr!"},
}

monster.loot = {
	{id = 2152, chance = 20000, maxCount = 50},
}

mType:register(monster)
