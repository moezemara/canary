local mType = Game.createMonsterType("Leviathan")
local monster = {}

monster.description = "a leviathan"
monster.experience = 5000
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
monster.health = 6000
monster.maxHealth = 6000
monster.race = "blood"
monster.corpse = 8307
monster.speed = 758
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
	canPushCreatures = true,
	staticAttackChance = 70,
	targetDistance = 0,
	runHealth = 600,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 75, attack = 70},
		{name = "combat", type = COMBAT_EARTHDAMAGE, interval = 1000, chance = 8, length = 9, spread = 3, minDamage = -130, maxDamage = -460, effect = CONST_ME_BIGPLANTS},
		{name = "combat", type = COMBAT_ICEDAMAGE, interval = 1000, chance = 10, length = 9, spread = 3, minDamage = -365, maxDamage = -491, effect = CONST_ME_ICEAREA},
		{name = "combat", type = COMBAT_DROWNDAMAGE, interval = 1000, chance = 11, radius = 4, target = 1, minDamage = -15, maxDamage = -20, effect = CONST_ME_BLUEBUBBLE},
}

monster.defenses = {
	defense = 30,
	armor = 20,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 25, minDamage = 50, maxDamage = 150},
}

monster.elements = {
		{type = COMBAT_FIREDAMAGE, percent = 30},
		{type = COMBAT_ENERGYDAMAGE, percent = -10},
		{type = COMBAT_PHYSICALDAMAGE, percent = -10},
		{type = COMBAT_DEATHDAMAGE, percent = -10},
}

monster.immunities = {
		{type = "ice", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
		{type = "drown", condition = true},
}

monster.voices = {
	interval = 3000,
	chance = 200,
		{text = "CHHHRRRR"},
		{text = "HISSSS"},
}

monster.loot = {
	{id = 2148, chance = 40000, maxCount = 80},
	{id = 2152, chance = 40000, maxCount = 6},
	{id = 2146, chance = 10000, maxCount = 3},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2148, chance = 40000, maxCount = 80},
		}
	},
}

mType:register(monster)
