local mType = Game.createMonsterType("green frog")
local monster = {}

monster.description = "a green frog"
monster.experience = 0
monster.outfit = {
	lookType = 224,
	lookHead = 69,
	lookBody = 66,
	lookLegs = 69,
	lookFeet = 66,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 60
monster.maxHealth = 60
monster.race = "venom"
monster.corpse = 6079
monster.speed = 230
monster.manaCost = 305

monster.changeTarget = {
	interval = 5000,
	chance = 20,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = true,
	rewardBoss = false,
	illusionable = false,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 6,
	runHealth = 60,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 3, attack = 9},
}

monster.defenses = {
	defense = 2,
	armor = 3,
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Ribbit!"},
}

mType:register(monster)
