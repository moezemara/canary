local mType = Game.createMonsterType("Blistering fire elemental")
local monster = {}

monster.description = "a blistering fire elemental"
monster.experience = 1300
monster.outfit = {
	lookType = 242,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 1500
monster.maxHealth = 1500
monster.race = "fire"
monster.corpse = 8964
monster.speed = 230
monster.manaCost = 850

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
	pushable = false,
	rewardBoss = false,
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 80, attack = 90},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 11, length = 7, spread = 3, minDamage = -65, maxDamage = -510},
		--{name = "firecondition", interval = 1000, chance = 12, radius = 6, target = 0, minDamage = -50, maxDamage = -200, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 15, range = 7, radius = 3, target = 1, shootEffect = CONST_ANI_FIRE},
}

monster.defenses = {
	defense = 20,
	armor = 20,
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = -25},
}

monster.immunities = {
		{type = "fire", condition = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2147, chance = 3200, maxCount = 3},
	{id = 8299, chance = 1100},
	{id = 8921, chance = 1800},
}

mType:register(monster)
