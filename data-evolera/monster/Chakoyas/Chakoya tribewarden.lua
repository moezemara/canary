local mType = Game.createMonsterType("Chakoya Tribewarden")
local monster = {}

monster.description = "a Chakoya Tribewarden"
monster.experience = 40
monster.outfit = {
	lookType = 259,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 68
monster.maxHealth = 68
monster.race = "blood"
monster.corpse = 7320
monster.speed = 270
monster.manaCost = 305

monster.changeTarget = {
	interval = 60000,
	chance = 0,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 50,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 30, attack = 30},
}

monster.defenses = {
	defense = 30,
	armor = 30,
}

monster.immunities = {
		{type = "energy", condition = true},
}

monster.voices = {
	interval = 2000,
	chance = 5,
		{text = "Chikuva!"},
		{text = "Quisavu tukavi!"},
		{text = "Si siyoqua jamjam!"},
		{text = "Achuq! jinuma!"},
		{text = "Si ji jusipa!"},
}

monster.loot = {
	{id = 2148, chance = 3333, maxCount = 10},
	{id = 2671, chance = 10000},
	{id = 2667, chance = 10000, maxCount = 3},
	{id = 2541, chance = 333},
	{id = 2398, chance = 3000},
	{id = 7381, chance = 600},
}

mType:register(monster)
