local mType = Game.createMonsterType("Hellgorak")
local monster = {}

monster.description = "a hellgorak"
monster.experience = 10000
monster.outfit = {
	lookType = 12,
	lookHead = 19,
	lookBody = 96,
	lookLegs = 21,
	lookFeet = 81,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 40000
monster.maxHealth = 40000
monster.race = "blood"
monster.corpse = 6068
monster.speed = 360
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
	staticAttackChance = 85,
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 130, attack = 130},
		{name = "combat", type = COMBAT_ENERGYDAMAGE, interval = 1000, chance = 11, length = 8, spread = 0, minDamage = -250, maxDamage = -819, effect = CONST_ME_PURPLEENERGY},
		{name = "combat", type = COMBAT_MANADRAIN, interval = 2000, chance = 14, radius = 5, target = 0, minDamage = -90, maxDamage = -500, effect = CONST_ME_STUN},
		{name = "combat", type = COMBAT_FIREDAMAGE, interval = 1000, chance = 11, radius = 5, target = 1, minDamage = -50, maxDamage = -520, effect = CONST_ME_FIREAREA},
		{name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 5, radius = 7, target = 0, minDamage = 0, maxDamage = -150, effect = CONST_ME_POFF},
}

monster.defenses = {
	defense = 65,
	armor = 70,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 11, minDamage = 400, maxDamage = 900},
}

monster.elements = {
		{type = COMBAT_ICEDAMAGE, percent = 99},
		{type = COMBAT_ENERGYDAMAGE, percent = 99},
		{type = COMBAT_EARTHDAMAGE, percent = 99},
		{type = COMBAT_HOLYDAMAGE, percent = 99},
		{type = COMBAT_DEATHDAMAGE, percent = 99},
		{type = COMBAT_FIREDAMAGE, percent = 99},
}

monster.immunities = {
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 0,
		{text = "I'll sacrifice yours souls to seven!"},
		{text = "I'm bad news for you mortals!"},
		{text = "No man can defeat me!"},
		{text = "Your puny skills are no match for me."},
		{text = "I smell your fear."},
		{text = "Delicious!"},
}

monster.loot = {
	{id = 2148, chance = 80000, maxCount = 100},
	{id = 2148, chance = 70000, maxCount = 100},
	{id = 2160, chance = 100000, maxCount = 3},
	{id = 2143, chance = 3000, maxCount = 7},
	{id = 2514, chance = 1650},
	{id = 7590, chance = 7000},
	{id = 7591, chance = 7000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2148, chance = 60000, maxCount = 83},
			{id = 7368, chance = 100000, maxCount = 25},
		}
	},
}

mType:register(monster)
