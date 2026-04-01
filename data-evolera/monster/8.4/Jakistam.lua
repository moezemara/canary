local mType = Game.createMonsterType("Jakistam")
local monster = {}

monster.description = "jakistam"
monster.experience = 280000
monster.outfit = {
	lookType = 333,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 20000
monster.maxHealth = 20000
monster.race = "blood"
monster.corpse = 2826
monster.speed = 164
monster.manaCost = 255

monster.changeTarget = {
	interval = 2000,
	chance = 0,
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
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 8,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 80, attack = 2000},
}

monster.defenses = {
	defense = 4,
	armor = 1,
}

monster.loot = {
	{id = 2666, chance = 50000, maxCount = 2},
	{id = 3976, chance = 10000},
}

mType:register(monster)
