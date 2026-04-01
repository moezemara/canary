local mType = Game.createMonsterType("Prince Almirith")
local monster = {}

monster.description = "the elf prince"
monster.experience = 2400
monster.outfit = {
	lookType = 63,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 5000
monster.maxHealth = 5000
monster.race = "blood"
monster.corpse = 2979
monster.speed = 260
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 50,
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
	staticAttackChance = 70,
	targetDistance = 4,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 25, attack = 20},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 1000, chance = 45, range = 7, minDamage = -100, maxDamage = -170, shootEffect = CONST_ANI_ARROW},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 3000, chance = 70, range = 7, minDamage = -50, maxDamage = -90, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGY},
		{name = "combat", type = COMBAT_PHYSICALDAMAGE, interval = 5000, chance = 85, range = 7, minDamage = -175, maxDamage = -250, shootEffect = CONST_ANI_SUDDENDEATH},
}

monster.defenses = {
	defense = 20,
	armor = 15,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 20, minDamage = 100, maxDamage = 500},
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
		{text = "Im the Prince of this Forest!"},
		{text = "This is my forest!"},
		{text = "How did you get here?"},
		{text = "Stand still!"},
}

monster.loot = {
	{id = 2544, chance = 6000, maxCount = 3},
	{id = 2260, chance = 18000},
	{id = 2032, chance = 5500},
	{id = 2689, chance = 14000},
	{id = 2047, chance = 22000},
	{id = 2198, chance = 2000},
	{id = 2747, chance = 7000},
	{id = 2652, chance = 7000},
	{id = 2600, chance = 9000},
	{id = 2177, chance = 1000},
	{id = 2682, chance = 22000},
	{id = 2642, chance = 13000},
	{id = 1949, chance = 30000},
	{id = 2802, chance = 5000},
	{id = 2189, chance = 1000},
	{id = 2154, chance = 200},
}

mType:register(monster)
