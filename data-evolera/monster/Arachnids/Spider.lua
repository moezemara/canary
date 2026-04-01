local mType = Game.createMonsterType("spider")
local monster = {}

monster.description = "a spider"
monster.experience = 12
monster.outfit = {
	lookType = 30,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 20
monster.maxHealth = 20
monster.race = "venom"
monster.corpse = 5961
monster.speed = 152
monster.manaCost = 210

monster.changeTarget = {
	interval = 2000,
	chance = 0,
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
		{name = "melee", interval = 2000, skill = 9, attack = 7},
}

monster.defenses = {
	defense = 2,
	armor = 2,
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = -10},
}

monster.loot = {
	{id = 2148, chance = 90000, maxCount = 5},
}

mType:register(monster)
