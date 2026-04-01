local mType = Game.createMonsterType("Haunted Butcher Knife")
local monster = {}

monster.description = "a haunted butcher knife - RUN RUN RUN"
monster.experience = 0
monster.outfit = {
	lookType = 0,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 50
monster.maxHealth = 50
monster.race = "undead"
monster.corpse = 0
monster.speed = 100
monster.manaCost = 590

monster.changeTarget = {
	interval = 5000,
	chance = 8,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = false,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -10000000, maxDamage = -13000000},
}

monster.defenses = {
	defense = 18,
	armor = 10,
}

monster.immunities = {
		{type = "paralyze", condition = true},
}

monster.voices = {
	interval = 10000,
	chance = 100,
		{text = "I WILL SLAUGHTER YOU!"},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 2483, chance = 10000},
	{id = 5880, chance = 2500, maxCount = 2},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 1295, chance = 10000},
			{id = 1294, chance = 20000, maxCount = 5},
			{id = 2395, chance = 2500},
			{id = 2050, chance = 20000},
			{id = 2580, chance = 5000},
		}
	},
}

mType:register(monster)
