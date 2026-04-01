local mType = Game.createMonsterType("Ali Aman")
local monster = {}

monster.description = "an Ali Aman"
monster.experience = 0
monster.outfit = {
	lookType = 128,
	lookHead = 97,
	lookBody = 97,
	lookLegs = 97,
	lookFeet = 97,
	lookAddons = 1,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 650000000
monster.maxHealth = 650000000
monster.race = "blood"
monster.corpse = 2317
monster.speed = 300
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 30,
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
	staticAttackChance = 95,
	targetDistance = 0,
	runHealth = 1150,
}

monster.attacks = {
		{name = "melee", interval = 1000, minDamage = -4000000, maxDamage = -4500000},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 50, range = 2, minDamage = -1000000, maxDamage = -1000000, shootEffect = CONST_ANI_SMALLROCK},
}

monster.defenses = {
	defense = 25,
	armor = 25,
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Feel the power of my eyebrows!"},
		{text = "You shall suffer from the sight of my eyebrows!"},
		{text = "It's time for you to see what real eyebrows look like!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 70},
}

mType:register(monster)
