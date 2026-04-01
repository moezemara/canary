local mType = Game.createMonsterType("Smuggler baron silvertoe")
local monster = {}

monster.description = "a smuggler baron silvertoe"
monster.experience = 170
monster.outfit = {
	lookType = 134,
	lookHead = 95,
	lookBody = 0,
	lookLegs = 113,
	lookFeet = 115,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 280
monster.maxHealth = 280
monster.race = "blood"
monster.corpse = 6080
monster.speed = 230
monster.manaCost = 390

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
		{name = "melee", interval = 2000, skill = 28, attack = 22},
}

monster.defenses = {
	defense = 13,
	armor = 10,
}

monster.summons = {
		{name = "Wild Warrior", chance = 20, interval = 3000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "i will make your dead look like an accident!"},
		{text = "you should not have interferred with my bussiness"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 2398, chance = 10000},
	{id = 2666, chance = 20000, maxCount = 3},
}

mType:register(monster)
