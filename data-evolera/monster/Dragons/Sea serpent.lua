local mType = Game.createMonsterType("Sea Serpent")
local monster = {}

monster.description = "a sea serpent"
monster.experience = 2300
monster.outfit = {
	lookType = 275,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 3200
monster.maxHealth = 3200
monster.race = "blood"
monster.corpse = 8307
monster.speed = 350
monster.manaCost = 390

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
	canPushCreatures = true,
	staticAttackChance = 85,
	targetDistance = 0,
	runHealth = 300,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 75, attack = 70},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 5, length = 9, spread = 3, minDamage = -60, maxDamage = -305, effect = CONST_ME_BIGPLANTS},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 1000, chance = 7, length = 9, spread = 3, minDamage = -120, maxDamage = -300, effect = CONST_ME_ICEAREA},
		--{name = "drowncondition", interval = 1000, chance = 8, radius = 4, target = 1, maxDamage = -200, effect = CONST_ME_BLUEBUBBLE},
}

monster.defenses = {
	defense = 20,
	armor = 16,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 25, minDamage = 50, maxDamage = 150},
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = 30},
		{type = COMBAT_ENERGYDAMAGE, percent = -10},
		{type = COMBAT_PHYSICALDAMAGE, percent = -15},
		{type = COMBAT_DEATHDAMAGE, percent = -10},
}

monster.immunities = {
		{type = "ice", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 3000,
	chance = 20,
		{text = "CHHHRRRR"},
		{text = "HISSSS"},
}

monster.loot = {
	{id = 2148, chance = 40000, maxCount = 71},
	{id = 2146, chance = 10000},
	{id = 2666, chance = 20000, maxCount = 4},
	{id = 2214, chance = 10000},
	{id = 7391, chance = 1200},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2672, chance = 20000, maxCount = 3},
			{id = 7888, chance = 3100},
			{id = 8887, chance = 1500},
			{id = 7424, chance = 2600},
		}
	},
}

mType:register(monster)
