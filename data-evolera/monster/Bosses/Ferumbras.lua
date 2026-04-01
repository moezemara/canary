local mType = Game.createMonsterType("Ferumbras")
local monster = {}

monster.description = "Ferumbras"
monster.experience = 12000
monster.outfit = {
	lookType = 229,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 35000
monster.maxHealth = 35000
monster.race = "venom"
monster.corpse = 6078
monster.speed = 320
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
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 2,
	runHealth = 2500,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = -100, maxDamage = -350},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 2000, chance = 20, range = 7, minDamage = -300, maxDamage = -700, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 3000, chance = 20, radius = 6, target = 0, minDamage = -250, maxDamage = -550, effect = CONST_ME_POISON},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 2000, chance = 18, radius = 6, target = 0, minDamage = -200, maxDamage = -400, effect = CONST_ME_ENERGY},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 2000, chance = 16, radius = 6, target = 0, minDamage = -225, maxDamage = -375, effect = CONST_ME_REDSHIMMER},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 21, radius = 6, target = 0, minDamage = -200, maxDamage = -450, effect = CONST_ME_POFF},
		{name = "effect", interval = 3000, chance = 20, radius = 5, target = 0, minDamage = -200, maxDamage = -600, effect = CONST_ME_BLACKSPARK},
		--{name = "firecondition", interval = 3000, chance = 20, range = 7, radius = 7, target = 1, minDamage = -200, maxDamage = -800, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 25, length = 8, spread = 0, minDamage = -50, maxDamage = -250, effect = CONST_ME_GREENSPARK},
}

monster.defenses = {
	defense = 120,
	armor = 100,
		{name = "combat", type = COMBAT_HEALING, interval = 2000, chance = 10, minDamage = 900, maxDamage = 1500},
		{name = "speed", interval = 3000, chance = 30, speedchange = 360, duration = 7000},
		{name = "invisible", interval = 4000, chance = 20, duration = 5000},
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = 90},
}

monster.immunities = {
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "Demon", chance = 12, interval = 3000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 20,
		{text = "NOONE WILL STOP ME THIS TIME!", yell = true},
		{text = "THE POWER IS MINE!", yell = true},
}

monster.loot = {
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2148, chance = 100000, maxCount = 25},
	{id = 2393, chance = 16060},
	{id = 2514, chance = 12050},
	{id = 2472, chance = 7000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2678, chance = 20000, maxCount = 3},
			{id = 2148, chance = 100000, maxCount = 100},
			{id = 2151, chance = 12000, maxCount = 4},
			{id = 5903, chance = 100000},
			{id = 2149, chance = 15000, maxCount = 3},
			{id = 2171, chance = 30000},
			{id = 2415, chance = 6000},
		}
	},
}

mType:register(monster)
