local mType = Game.createMonsterType("dwarf geomancer")
local monster = {}

monster.description = "a dwarf geomancer"
monster.experience = 245
monster.outfit = {
	lookType = 66,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 380
monster.maxHealth = 380
monster.race = "blood"
monster.corpse = 6015
monster.speed = 200
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
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 150,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 50, attack = 30},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 10, range = 7, radius = 4, target = 1, minDamage = -50, maxDamage = -120, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 34, range = 7, minDamage = -55, maxDamage = -105, shootEffect = CONST_ANI_LARGEROCK},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 1000, chance = 25, range = 7, minDamage = -50, maxDamage = -80},
}

monster.defenses = {
	defense = 15,
	armor = 15,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 50, minDamage = 75, maxDamage = 325},
}

monster.immunities = {
		{type = "fire", condition = true},
		{type = "poison", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Hail Durin!"},
		{text = "Earth is the strongest element."},
		{text = "Dust to dust."},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 2673, chance = 6666, maxCount = 3},
	{id = 2260, chance = 4000},
	{id = 2649, chance = 10000},
	{id = 2643, chance = 20000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2162, chance = 2500},
			{id = 2787, chance = 20000, maxCount = 3},
		}
	},
}

mType:register(monster)
