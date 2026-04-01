local mType = Game.createMonsterType("Multitoed Human")
local monster = {}

monster.description = "a multitoed human"
monster.experience = 150
monster.outfit = {
	lookType = 323,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 600000000
monster.maxHealth = 600000000
monster.race = "blood"
monster.corpse = 9107
monster.speed = 245
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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 1000, minDamage = -7000000, maxDamage = -8000000},
}

monster.defenses = {
	defense = 30,
	armor = 30,
}

monster.voices = {
	interval = 2500,
	chance = 10,
		{text = "Take that creature off my back!! I can fell it!"},
		{text = "HEEEEEEEELP!"},
		{text = "You will be the next infected one... GRAAAAAAAAARRR!"},
		{text = "Science... is a curse."},
		{text = "Run as fast as you can."},
		{text = "Oh by the gods! What is this... aaaaaargh!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 50},
}

mType:register(monster)
