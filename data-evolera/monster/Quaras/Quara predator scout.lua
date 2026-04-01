local mType = Game.createMonsterType("quara predator scout")
local monster = {}

monster.description = "a quara predator scout"
monster.experience = 400
monster.outfit = {
	lookType = 20,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 0
monster.health = 890
monster.maxHealth = 890
monster.race = "blood"
monster.corpse = 6067
monster.speed = 290
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
	targetDistance = 1,
	runHealth = 0,
}

monster.attacks = {
		{name = "melee", interval = 2000, skill = 100, attack = 95},
}

monster.defenses = {
	defense = 29,
	armor = 20,
		{name = "combat", type = COMBAT_HEALING, interval = 1000, chance = 15, minDamage = 113, maxDamage = 180},
}

monster.elements = {
		{type = COMBAT_ENERGYDAMAGE, percent = -25},
}

monster.immunities = {
		{type = "ice", condition = true},
		{type = "fire", condition = true},
		--{type = "lifedrain", condition = true},
		{type = "paralyze", condition = true},
		{type = "invisible", condition = true},
}

monster.voices = {
	interval = 5000,
	chance = 10,
		{text = "Gnarrr!"},
}

monster.loot = {
	{id = 2670, chance = 20000, maxCount = 5},
	{id = 5895, chance = 2000},
	{id = 2148, chance = 100000, maxCount = 100},
	{id = 2387, chance = 2000},
	{
		id = 1987, chance = 100000,
		childs = {
			{id = 2473, chance = 3333},
			{id = 2145, chance = 1429},
			{id = 2483, chance = 4000},
		}
	},
}

mType:register(monster)
