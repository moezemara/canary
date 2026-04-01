local mType = Game.createMonsterType("cobra")
local monster = {}

monster.description = "a cobra"
monster.experience = 30
monster.outfit = {
	lookType = 81,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 65
monster.maxHealth = 65
monster.race = "blood"
monster.corpse = 3007
monster.speed = 170
monster.manaCost = 275

monster.changeTarget = {
	interval = 5000,
	chance = 8,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 23, attack = 15},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 25, range = 5, minDamage = -14, maxDamage = -26},
}

monster.defenses = {
	defense = 4,
	armor = 1,
}

monster.immunities = {
		{type = "poison", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "zzzzzz"},
}

monster.loot = {
	{id = 2220, chance = 33333},
	{id = 2230, chance = 20000},
}

mType:register(monster)
