local mType = Game.createMonsterType("Mino Wizard")
local monster = {}

monster.description = "a Mino Wizard"
monster.experience = 150
monster.outfit = {
	lookType = 23,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 100000000
monster.maxHealth = 100000000
monster.race = "blood"
monster.corpse = 5981
monster.speed = 300
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
		{name = "melee", interval = 2000, skill = 18, attack = 15},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1000, chance = 14, range = 7, minDamage = -10000000, maxDamage = -12000000, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGY},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 2000, chance = 10, range = 7, radius = 1, target = 1, minDamage = -10000000, maxDamage = -15000000, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1000, chance = 9, range = 7, radius = 1, target = 1, shootEffect = CONST_ANI_ENERGY},
}

monster.defenses = {
	defense = 20,
	armor = 18,
}

monster.immunities = {
		{type = "energy", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "#W Learrn tha secrret uf deathhh!"},
		{text = "Kaplar!"},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 2050, chance = 10000},
	{id = 2461, chance = 8000},
	{id = 2649, chance = 8000},
	{id = 5878, chance = 5000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2189, chance = 1333},
			{id = 2404, chance = 10000},
			{id = 2362, chance = 20000, maxCount = 5},
			{id = 2817, chance = 10000},
			{id = 2311, chance = 2857},
			{id = 2465, chance = 4000},
			{id = 2648, chance = 4000},
			{id = 7425, chance = 1000},
		}
	},
}

mType:register(monster)
