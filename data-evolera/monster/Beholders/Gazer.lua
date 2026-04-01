local mType = Game.createMonsterType("gazer")
local monster = {}

monster.description = "a gazer"
monster.experience = 90
monster.outfit = {
	lookType = 109,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 120
monster.maxHealth = 120
monster.race = "venom"
monster.corpse = 6036
monster.speed = 240
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
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
	illusionable = true,
	canPushItems = true,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 25, attack = 9},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 1000, chance = 12, range = 7, minDamage = -25, maxDamage = -35, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 1000, chance = 15, range = 7, minDamage = -5, maxDamage = -15, effect = CONST_ME_REDSHIMMER},
}

monster.defenses = {
	defense = 15,
	armor = 4,
		{name = "speed", interval = 1000, chance = 10, speedchange = 320, duration = 4000},
}

monster.immunities = {
		{type = "poison", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Mommy!?"},
		{text = "Buuuuhaaaahhaaaaa!"},
		{text = "Me need mana!"},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 30},
	{id = 2050, chance = 20000},
	{id = 2483, chance = 10000},
	{id = 2473, chance = 6666},
	{id = 2398, chance = 20000},
	{id = 3976, chance = 50000, maxCount = 10},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2460, chance = 6666},
			{id = 2229, chance = 20000, maxCount = 2},
			{id = 2403, chance = 10000},
			{id = 2168, chance = 2500},
			{id = 3972, chance = 500},
		}
	},
}

mType:register(monster)
