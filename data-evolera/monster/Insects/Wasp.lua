local mType = Game.createMonsterType("wasp")
local monster = {}

monster.description = "a wasp"
monster.experience = 25
monster.outfit = {
	lookType = 44,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 35
monster.maxHealth = 35
monster.race = "venom"
monster.corpse = 5989
monster.speed = 460
monster.manaCost = 280

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
		{name = "melee", interval = 1500, skill = 18, attack = 12},
}

monster.defenses = {
	defense = 8,
	armor = 4,
}

monster.immunities = {
		{type = "poison", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 100,
		{text = "Bsssssss"},
}

monster.loot = {
	{id = 5902, chance = 5000},
}

mType:register(monster)
