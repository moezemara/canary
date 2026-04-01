local mType = Game.createMonsterType("Demora")
local monster = {}

monster.description = "a small demon"
monster.experience = 400
monster.outfit = {
	lookType = 35,
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
monster.race = "fire"
monster.corpse = 2916
monster.speed = 420
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 10,
}

monster.strategiesTarget = {
	nearest = 70,
	defense = 10,
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
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 60, attack = 40},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 1000, chance = 13, range = 7, minDamage = -10, maxDamage = -30},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 3000, chance = 60, range = 7, radius = 5, target = 1, minDamage = -30, maxDamage = -60, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 6000, chance = 65, range = 7, radius = 1, target = 1, shootEffect = CONST_ANI_FIRE},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 6000, chance = 20, length = 8, spread = 0, minDamage = -100, maxDamage = -150, effect = CONST_ME_ENERGY},
}

monster.defenses = {
	defense = 65,
	armor = 40,
		{name = "combat", type = COMBAT_HEALING, interval = 4000, chance = 5, minDamage = 10, maxDamage = 50},
}

monster.immunities = {
		{type = "energy", condition = true},
		{type = "fire", condition = true},
		{type = "poison", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.summons = {
		{name = "fire devil", chance = 15, interval = 2000, max = 1},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "MWIAHAIA!", yell = true},
		{text = "Your soul will be mine someday!", yell = true},
}

monster.loot = {
	{id = 2462, chance = 1200},
	{id = 2387, chance = 20000},
	{id = 2432, chance = 4000},
	{id = 2795, chance = 20000, maxCount = 6},
	{id = 2393, chance = 2000},
	{id = 2148, chance = 70000, maxCount = 100},
	{id = 2148, chance = 60000, maxCount = 100},
	{id = 2148, chance = 50000, maxCount = 100},
	{id = 2148, chance = 40000, maxCount = 100},
	{id = 2179, chance = 1100},
	{id = 2418, chance = 1500},
	{id = 2396, chance = 600},
	{id = 2472, chance = 100},
	{id = 2514, chance = 500},
	{id = 2164, chance = 200},
	{id = 2176, chance = 3000},
	{id = 2171, chance = 700},
	{id = 1982, chance = 1300},
	{id = 2214, chance = 500},
	{id = 2149, chance = 11000},
	{id = 2165, chance = 1400},
	{id = 2151, chance = 3500},
}

mType:register(monster)
