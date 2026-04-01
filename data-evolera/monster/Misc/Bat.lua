local mType = Game.createMonsterType("bat")
local monster = {}

monster.description = "a bat"
monster.experience = 10
monster.outfit = {
	lookType = 122,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 30
monster.maxHealth = 30
monster.race = "blood"
monster.corpse = 6053
monster.speed = 200
monster.manaCost = 250

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
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 3,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 16, attack = 8},
}

monster.defenses = {
	defense = 6,
	armor = 1,
}

monster.loot = {
	{id = 5894, chance = 2000},
}

mType:register(monster)
