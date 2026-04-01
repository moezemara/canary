local mType = Game.createMonsterType("Young Sea Serpent")
local monster = {}

monster.description = "a young sea serpent"
monster.experience = 1000
monster.outfit = {
	lookType = 317,
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
monster.race = "blood"
monster.corpse = 9882
monster.speed = 658
monster.manaCost = 390

monster.changeTarget = {
	interval = 10000,
	chance = 30,
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
	staticAttackChance = 70,
	targetDistance = 0,
	runHealth = 300,
}

monster.attacks = {
		{name = "melee", interval = 2000, minDamage = 0, maxDamage = -150},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 2000, chance = 16, length = 9, spread = 3, minDamage = -17, maxDamage = -248, effect = CONST_ME_SMALLPLANTS},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 2000, chance = 20, length = 9, spread = 3, minDamage = -80, maxDamage = -250, effect = CONST_ME_ICEATTACK},
}

monster.defenses = {
	defense = 21,
	armor = 13,
		{name = "combat", type = COMBAT_HEALING, interval = 1200, chance = 25, minDamage = 50, maxDamage = 150},
}

monster.immunities = {
		{type = "ice", condition = true},
		{type = "invisible", condition = true},
		{type = "drown", condition = true},
		{type = "paralyze", condition = true},
}

monster.voices = {
	interval = 8000,
	chance = 20,
		{text = "CHHHRRRR"},
		{text = "HISSSS"},
}

monster.loot = {
	{id = 2148, chance = 50000, maxCount = 59},
	{id = 2666, chance = 20000, maxCount = 4},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2148, chance = 40000, maxCount = 60},
			{id = 2146, chance = 5000},
			{id = 2165, chance = 2000},
			{id = 2489, chance = 4000},
			{id = 7589, chance = 1000},
		}
	},
}

mType:register(monster)
