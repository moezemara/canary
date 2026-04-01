local mType = Game.createMonsterType("poison spider")
local monster = {}

monster.description = "a poison spider"
monster.experience = 22
monster.outfit = {
	lookType = 36,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 26
monster.maxHealth = 26
monster.race = "venom"
monster.corpse = 5974
monster.speed = 160
monster.manaCost = 270

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
	runHealth = 6,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 17, attack = 16},
}

monster.defenses = {
	defense = 6,
	armor = 2,
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = -10},
}

monster.immunities = {
		{type = "earth", condition = true},
}

monster.loot = {
	{id = 2148, chance = 80000, maxCount = 5},
}

mType:register(monster)
