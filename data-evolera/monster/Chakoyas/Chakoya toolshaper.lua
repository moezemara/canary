local mType = Game.createMonsterType("Chakoya Toolshaper")
local monster = {}

monster.description = "a Chakoya Toolshaper"
monster.experience = 40
monster.outfit = {
	lookType = 249,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 80
monster.maxHealth = 80
monster.race = "blood"
monster.corpse = 7320
monster.speed = 270
monster.manaCost = 0

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
	convinceable = false,
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
		{name = "melee", interval = 2000, minDamage = -0, maxDamage = -35},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 34, range = 7, radius = 3, target = 1, minDamage = -5, maxDamage = -15, shootEffect = CONST_ANI_SNOWBALL},
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
		{text = "Chikuva!!"},
		{text = "Jinuma jamjam!"},
}

monster.loot = {
	{id = 2667, chance = 20000, maxCount = 2},
	{id = 2148, chance = 20000, maxCount = 20},
	{id = 2553, chance = 2000},
}

mType:register(monster)
