local mType = Game.createMonsterType("Undead Minion")
local monster = {}

monster.description = "an Undead Minion"
monster.experience = 550
monster.outfit = {
	lookType = 37,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 850
monster.maxHealth = 850
monster.race = "undead"
monster.corpse = 5963
monster.speed = 230
monster.manaCost = 620

monster.changeTarget = {
	interval = 5000,
	chance = 1,
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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 1000, skill = 80, attack = 55},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 13, radius = 4, target = 0, minDamage = -100, maxDamage = -160, effect = CONST_ME_MORTAREA},
}

monster.defenses = {
	defense = 25,
	armor = 25,
}

monster.immunities = {
		{type = "fire", condition = true},
		{type = "poison", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "drunk", condition = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 40},
	{id = 2260, chance = 10000},
	{id = 2417, chance = 5000},
	{id = 2513, chance = 1000},
	{id = 6570, chance = 5538},
	{id = 6571, chance = 1538},
	{id = 2515, chance = 5000},
}

mType:register(monster)
