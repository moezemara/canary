local mType = Game.createMonsterType("Parrot")
local monster = {}

monster.description = "a parrot"
monster.experience = 0
monster.outfit = {
	lookType = 217,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 25
monster.maxHealth = 25
monster.race = "blood"
monster.corpse = 6056
monster.speed = 240
monster.manaCost = 250

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
	hostile = false,
	convinceable = true,
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 25,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 13, attack = 6},
}

monster.defenses = {
	defense = 6,
	armor = 2,
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "BR? PL? SWE?"},
		{text = "Screeeeeeech!"},
		{text = "Neeeewbiiieee!"},
		{text = "You advanshed, you advanshed!"},
		{text = "Hope you die and loooosh it!"},
		{text = "Hunterrr ish PK!"},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 3976, chance = 50000, maxCount = 3},
}

mType:register(monster)
