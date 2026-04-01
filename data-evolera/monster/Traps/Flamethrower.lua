local mType = Game.createMonsterType("flamethrower")
local monster = {}

monster.description = "a flamethrower"
monster.experience = 1200
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
monster.health = 9950
monster.maxHealth = 9950
monster.race = "undead"
monster.corpse = 0
monster.speed = 0
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
	attackable = false,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = false,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 100,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 1, attack = 1},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 100, range = 7, minDamage = -50, maxDamage = -100, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREATTACK},
}

monster.defenses = {
	defense = 1,
	armor = 1,
}

monster.immunities = {
		{type = "physical", condition = true},
		{type = "energy", condition = true},
		{type = "fire", condition = true},
		{type = "poison", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 20},
}

mType:register(monster)
