local mType = Game.createMonsterType("Cat")
local monster = {}

monster.description = "a cat"
monster.experience = 0
monster.outfit = {
	lookType = 276,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 20
monster.maxHealth = 20
monster.race = "blood"
monster.corpse = 2839
monster.speed = 160
monster.manaCost = 200

monster.changeTarget = {
	interval = 50000,
	chance = 0,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = false,
	convinceable = true,
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 50,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = 0, maxDamage = -15},
}

monster.defenses = {
	defense = 2,
	armor = 0,
}

monster.voices = {
	interval = 60000,
	chance = 0,
		{text = "Mew!"},
		{text = "Meow Meow!"},
}

mType:register(monster)
