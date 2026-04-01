local mType = Game.createMonsterType("elf arcanist")
local monster = {}

monster.description = "a elf arcanist"
monster.experience = 175
monster.outfit = {
	lookType = 63,
	lookHead = 20,
	lookBody = 30,
	lookLegs = 40,
	lookFeet = 50,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 220
monster.maxHealth = 220
monster.race = "blood"
monster.corpse = 6011
monster.speed = 230
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
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 4,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 25, attack = 20},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 10, range = 7, minDamage = -15, maxDamage = -45, shootEffect = CONST_ANI_ARROW},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1000, chance = 9, range = 7, minDamage = -30, maxDamage = -50, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGY},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 12, range = 7, minDamage = -60, maxDamage = -80, shootEffect = CONST_ANI_SUDDENDEATH},
}

monster.defenses = {
	defense = 20,
	armor = 15,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 20, minDamage = 42, maxDamage = 68},
}

monster.immunities = {
		{type = "energy", condition = true},
		{type = "fire", condition = true},
		{type = "poison", condition = true},
		{type = "outfit", condition = true},
		{type = "drunk", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Feel my wrath!"},
		{text = "For the Daughter of the Stars!"},
		{text = "I'll bring balance upon you!"},
		{text = "Tha'shi Cenath!"},
		{text = "Vihil Ealuel!"},
}

monster.loot = {
	{id = 3976, chance = 50000, maxCount = 10},
	{id = 2148, chance = 100000, maxCount = 20},
	{id = 1949, chance = 10000},
	{id = 2578, chance = 5000},
	{id = 2260, chance = 4000},
	{id = 2642, chance = 20000},
	{id = 2682, chance = 6666},
	{id = 2802, chance = 10000},
	{id = 2600, chance = 33333},
	{id = 2177, chance = 2857},
	{id = 2689, chance = 20000, maxCount = 3},
	{id = 5922, chance = 5000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2189, chance = 1333},
			{id = 2652, chance = 5000},
			{id = 2544, chance = 20000, maxCount = 10},
			{id = 2456, chance = 10000},
			{id = 2032, chance = 4000},
			{id = 2062, chance = 2857},
			{id = 2125, chance = 1818},
			{id = 2154, chance = 1333},
		}
	},
}

mType:register(monster)
