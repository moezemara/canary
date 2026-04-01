local mType = Game.createMonsterType("deathslicer")
local monster = {}

monster.description = "a deathslicer"
monster.experience = 340
monster.outfit = {
	lookType = 102,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 2000
monster.maxHealth = 2000
monster.race = "undead"
monster.corpse = 2253
monster.speed = 370
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
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
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 20,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 90, attack = 95},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1000, chance = 20, radius = 3, target = 0, minDamage = -150, maxDamage = -350, effect = CONST_ME_YELLOWSPARK},
}

monster.defenses = {
	defense = 1999,
	armor = 1999,
}

monster.immunities = {
		{type = "physical", condition = true},
		{type = "holy", condition = true},
		{type = "energy", condition = true},
		{type = "fire", condition = true},
		{type = "death", condition = true},
		{type = "earth", condition = true},
		{type = "ice", condition = true},
		{type = "poison", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

mType:register(monster)
