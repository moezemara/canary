local mType = Game.createMonsterType("butterfly")
local monster = {}

monster.description = "a butterfly"
monster.experience = 0
monster.outfit = {
	lookType = 227,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 2
monster.maxHealth = 2
monster.race = "venom"
monster.corpse = 4313
monster.speed = 300
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
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
	illusionable = false,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 8,
	runHealth = 2,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 5, attack = 0},
}

monster.defenses = {
	defense = 4,
	armor = 0,
}

monster.immunities = {
		{type = "poison", condition = true},
		{type = "paralyze", condition = true},
		{type = "drunk", condition = true},
}

mType:register(monster)
